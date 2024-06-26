require_relative 'spec_helper'

RSpec.describe 'Component allocations' do
  before(:all) do
    @client = build_client
    @product_family = Factories::ProductFamily.create(@client)
    @product = Factories::Product.create(@client, product_family: @product_family)
    @customer = Factories::Customer.create(@client)
    @subscription = Factories::Subscription.create(@client, product: @product, customer: @customer)
    @on_off_component = Factories::OnOffComponent.create(@client, product_family: @product_family)
    @quantity_based_component = Factories::QuantityBasedComponent.create(@client, product_family: @product_family)
  end

  it 'previews the component allocation and makes the allocation' do
    allocation_preview = @client.subscription_components.preview_allocations(
      @subscription.id,
      body: AdvancedBilling::PreviewAllocationsRequest.new(
        allocations: [
          AdvancedBilling::CreateAllocation.new(
            quantity: 1,
            component_id: @on_off_component.id,
            memo: 'foo'
          ),
          AdvancedBilling::CreateAllocation.new(
            quantity: '10.3',
            component_id: @quantity_based_component.id,
            memo: 'bar'
          ),
        ],
        effective_proration_date: Date.iso8601((Date.today).strftime("%Y-%m-%d"))
      )
    ).allocation_preview

    expect(allocation_preview.period_type).to eq('prorated')
    expect(
      allocation_preview.allocations.find { |ac| ac.component_id == @on_off_component.id }.quantity
    ).to eq(1)
    expect(
      allocation_preview.allocations.find { |ac| ac.component_id == @quantity_based_component.id }.quantity
    ).to eq('10.3')

    response = @client.subscription_components.allocate_components(
      @subscription.id,
      body: AdvancedBilling::AllocateComponents.new(
        proration_upgrade_scheme: 'prorate-attempt-capture',
        proration_downgrade_scheme: 'no-prorate',
        allocations: [
          AdvancedBilling::CreateAllocation.new(
            quantity: 1,
            component_id: @on_off_component.id,
            memo: 'foo'
          ),
          AdvancedBilling::CreateAllocation.new(
            quantity: '10.3',
            component_id: @quantity_based_component.id,
            memo: 'bar'
          ),
        ]
      )
    )

    on_off_allocation = response.find { |ac| ac.allocation.component_id == @on_off_component.id }.allocation

    expect(on_off_allocation.memo).to eq('foo')
    expect(on_off_allocation.quantity).to eq(1)
    expect(on_off_allocation.subscription_id).to eq(@subscription.id)

    quantity_based_allocation = response.find { |ac| ac.allocation.component_id == @quantity_based_component.id }.allocation

    expect(quantity_based_allocation.memo).to eq('bar')
    expect(quantity_based_allocation.quantity).to eq('10.3')
    expect(quantity_based_allocation.subscription_id).to eq(@subscription.id)
  end

  it 'raises error when on/off component is allocated with invalid quantity' do
    expect {
      @client.subscription_components.preview_allocations(
        @subscription.id,
        body: AdvancedBilling::PreviewAllocationsRequest.new(
          allocations: [
            AdvancedBilling::CreateAllocation.new(
              quantity: 50,
              component_id: @on_off_component.id,
              memo: 'foo'
            ),
            AdvancedBilling::CreateAllocation.new(
              quantity: '10.3',
              component_id: @quantity_based_component.id,
              memo: 'bar'
            ),
          ],
          effective_proration_date: Date.iso8601((Date.today).strftime("%Y-%m-%d"))
        )
      )
    }.to raise_error do |error|
      expect(error).to be_a(AdvancedBilling::ComponentAllocationErrorException)
      expect(error.response.status_code).to eq(422)
      expect(error.errors.size).to eq(1)
      
      allocation_error_item = error.errors.first

      expect(allocation_error_item.kind).to eq('allocation')
      expect(allocation_error_item.component_id).to eq(@on_off_component.id)
      expect(allocation_error_item.on).to eq('quantity')
      expect(allocation_error_item.message).to eq('Quantity: must be either 1 (on) or 0 (off).')

      expect(JSON.parse(error.response.raw_body)).to eq(
        {
          "errors" => [
            {
              "kind" => "allocation",
              "component_id" => @on_off_component.id,
              "on" => "quantity",
              "message" => "Quantity: must be either 1 (on) or 0 (off)."
            }
          ]
        }
      )
    end
  end
end

