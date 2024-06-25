require_relative 'spec_helper'

RSpec.describe 'Check system metadata for subscriptions and customers' do
  before(:all) do
    client = build_client
    [AdvancedBilling::ResourceType::SUBSCRIPTIONS, AdvancedBilling::ResourceType::CUSTOMERS].each do |type|
      metafields = client.custom_fields.list_metafields('resource_type' => type).metafields
      while !metafields.empty?
        metafields.each do |m|
          client.custom_fields.delete_metafield(type, name: m.name)
        end
        metafields = client.custom_fields.list_metafields('resource_type' => type).metafields
      end
    end
  end
  it 'creates metafield, adds metadata, and lists subscriptions with metadata' do
    client = build_client

    dropdown_name = "Dropdown field #{SecureRandom.hex(4)}"
    text_field_name = "Text field #{SecureRandom.hex(4)}"

    result = client.custom_fields.create_metafields(
      AdvancedBilling::ResourceType::SUBSCRIPTIONS,
      body: AdvancedBilling::CreateMetafieldsRequest.new(
        metafields: [
          AdvancedBilling::CreateMetafield.new(
            name: dropdown_name,
            scope: AdvancedBilling::MetafieldScope.new(
              public_show: AdvancedBilling::IncludeOption::INCLUDE,
              public_edit: AdvancedBilling::IncludeOption::INCLUDE
            ),
            input_type: AdvancedBilling::MetafieldInput::DROPDOWN,
            enum: [
              'option 1',
              'option 2'
            ]
          ),
          AdvancedBilling::CreateMetafield.new(
            name: text_field_name
          )
        ]
      )
    )

    expect(result.size).to eq(2)

    select_field = result.find { |res| res.input_type == 'dropdown' }

    expect(select_field.enum).to eq(['option 1', 'option 2'])
    expect(select_field.scope.public_edit).to eq('1')
    expect(select_field.scope.public_show).to eq('1')
    expect(select_field.scope.hosted).to eq([])
    expect(select_field.scope.invoices).to eq('0')
    expect(select_field.scope.portal).to eq('0')
    expect(select_field.scope.statements).to eq('0')
    expect(select_field.data_count).to eq(0)
    expect(select_field.name).to eq(dropdown_name)

    text_field = result.find { |res| res.input_type == 'text' }

    expect(text_field.enum).to eq(nil)
    expect(text_field.scope.public_edit).to eq('0')
    expect(text_field.scope.public_show).to eq('0')
    expect(text_field.scope.hosted).to eq([])
    expect(text_field.scope.invoices).to eq('0')
    expect(text_field.scope.portal).to eq('0')
    expect(text_field.scope.statements).to eq('0')
    expect(text_field.data_count).to eq(0)
    expect(text_field.name).to eq(text_field_name)

    radio_name = "Radio field #{SecureRandom.hex(4)}"

    result = client.custom_fields.create_metafields(
      AdvancedBilling::ResourceType::CUSTOMERS,
      body: AdvancedBilling::CreateMetafieldsRequest.new(
        metafields: AdvancedBilling::CreateMetafield.new(
          name: radio_name,
          scope: AdvancedBilling::MetafieldScope.new(
            csv: AdvancedBilling::IncludeOption::INCLUDE,
            invoices: AdvancedBilling::IncludeOption::INCLUDE,
            portal: AdvancedBilling::IncludeOption::INCLUDE,
          ),
          input_type: AdvancedBilling::MetafieldInput::RADIO,
          enum: [
            'option 1',
            'option 2'
          ]
        )
      )
    )

    expect(result.size).to eq(1)

    radio_field = result.first

    expect(radio_field.enum).to eq(['option 1', 'option 2'])
    expect(radio_field.scope.public_edit).to eq('0')
    expect(radio_field.scope.public_show).to eq('0')
    expect(radio_field.scope.hosted).to eq([])
    expect(radio_field.scope.invoices).to eq('1')
    expect(radio_field.scope.portal).to eq('1')
    expect(radio_field.scope.statements).to eq('0')
    expect(radio_field.scope.csv).to eq('1')
    expect(radio_field.data_count).to eq(0)
    expect(radio_field.name).to eq(radio_name)

    product_family = Factories::ProductFamily.create(client)
    customer = Factories::Customer.create(client)
    product = Factories::Product.create(client, product_family: product_family)
    subscription = Factories::Subscription.create(client, customer: customer, product: product)

    results = client.custom_fields.create_metadata(
      AdvancedBilling::ResourceType::SUBSCRIPTIONS,
      subscription.id,
      body: AdvancedBilling::CreateMetadataRequest.new(
        metadata: [
          AdvancedBilling::CreateMetadata.new(
            name: dropdown_name,
            value: 'option 1'
          ),
          AdvancedBilling::CreateMetadata.new(
            name: text_field_name,
            value: 'something'
          )
        ]
      )
    )

    expect(results.size).to eq(2)

    select_metafield = results.find { |res| res.metafield_id == select_field.id }

    expect(select_metafield.value).to eq('option 1')
    expect(select_metafield.resource_id).to eq(subscription.id)
    expect(select_metafield.name).to eq(dropdown_name)

    text_metafield = results.find { |res| res.metafield_id == text_field.id }

    expect(text_metafield.value).to eq('something')
    expect(text_metafield.resource_id).to eq(subscription.id)
    expect(text_metafield.name).to eq(text_field_name)

    sleep(2) # wait for indexing

    results = client.subscriptions.list_subscriptions(
      'metadata' => {
        dropdown_name => 'option 1'
      }
    )

    expect(results.size).to eq(1)
    expect(results.first.subscription.id).to eq(subscription.id)

    results = client.custom_fields.create_metadata(
      AdvancedBilling::ResourceType::CUSTOMERS,
      customer.id,
      body: AdvancedBilling::CreateMetadataRequest.new(
        metadata: [
          AdvancedBilling::CreateMetadata.new(
            name: radio_name,
            value: 'option 2'
          )
        ]
      )
    )

    expect(results.size).to eq(1)

    radio_metafield = results.first

    expect(radio_metafield.value).to eq('option 2')
    expect(radio_metafield.resource_id).to eq(customer.id)
    expect(radio_metafield.name).to eq(radio_name)
  end
end

