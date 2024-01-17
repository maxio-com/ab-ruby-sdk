require_relative 'spec_helper'

RSpec.describe 'Component allocations' do
  before(:all) do
    @client = build_client
    @product_family = @client.product_families.read_product_family('handle:developer-experience-billing-plans').product_family
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
        [
          AdvancedBilling::CreateAllocation.new(
            1,
            @on_off_component.id,
            'foo'
          ),
          AdvancedBilling::CreateAllocation.new(
            '10.3',
            @quantity_based_component.id,
            'bar'
          ),
        ],
        Date.iso8601((Date.today + 1).strftime("%Y-%m-%d"))
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
        'prorate-attempt-capture',
        'no-prorate',
        [
          AdvancedBilling::CreateAllocation.new(
            1,
            @on_off_component.id,
            'foo'
          ),
          AdvancedBilling::CreateAllocation.new(
            '10.3',
            @quantity_based_component.id,
            'bar'
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
          [
            AdvancedBilling::CreateAllocation.new(
              50,
              @on_off_component.id,
              'foo'
            ),
            AdvancedBilling::CreateAllocation.new(
              '10.3',
              @quantity_based_component.id,
              'bar'
            ),
          ],
          Date.iso8601((Date.today + 1).strftime("%Y-%m-%d"))
        )
      )
    }.to raise_error do |error|
      expect(error).to be_a(AdvancedBilling::ComponentAllocationErrorException)
      expect(error.response.status_code).to eq(422)
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

