require_relative 'spec_helper'

RSpec.describe 'Check system metadata for subscriptions and customers' do
  it 'creates metafield, adds metadata, and lists subscriptions with metadata' do
    client = build_client

    # result = client.custom_fields.create_metafields(
    #   AdvancedBilling::ResourceType::SUBSCRIPTIONS,
    #   body: AdvancedBilling::CreateMetafieldsRequest.new(
    #     AdvancedBilling::CreateMetafield.new(
    #       "Dropdown field #{SecureRandom.hex(4)}",
    #       AdvancedBilling::MetafieldScope.new(
    #         nil,
    #         nil,
    #         nil,
    #         nil,
    #         AdvancedBilling::IncludeOption::INCLUDE,
    #         AdvancedBilling::IncludeOption::INCLUDE
    #       ),
    #       AdvancedBilling::MetafieldInput::DROPDOWN,
    #       [
    #         'option 1',
    #         'option 2'
    #       ]
    #     )
    #   )
    # )

    # text_field_name = "Text field #{SecureRandom.hex(4)}"

    # result = client.custom_fields.create_metafields(
    #   AdvancedBilling::ResourceType::SUBSCRIPTIONS,
    #   body: AdvancedBilling::CreateMetafieldsRequest.new(
    #     AdvancedBilling::CreateMetafield.new(
    #       text_field_name
    #     )
    #   )
    # )

    # text_field = result.first

    # expect(text_field.input_type).to eq('text')
    # expect(text_field.enum).to eq(nil)

    # result = client.custom_fields.create_metafields(
    #   AdvancedBilling::ResourceType::SUBSCRIPTIONS,
    #   body: [
    #     AdvancedBilling::CreateMetafieldsRequest.new(
    #       AdvancedBilling::CreateMetafield.new(
    #         "Dropdown field #{SecureRandom.hex(4)}",
    #         AdvancedBilling::MetafieldScope.new(
    #           nil,
    #           nil,
    #           nil,
    #           nil,
    #           AdvancedBilling::IncludeOption::INCLUDE,
    #           AdvancedBilling::IncludeOption::INCLUDE
    #         ),
    #         AdvancedBilling::MetafieldInput::DROPDOWN,
    #         [
    #           'option 1',
    #           'option 2'
    #         ]
    #       )
    #     ),
    #     AdvancedBilling::CreateMetafieldsRequest.new(
    #       AdvancedBilling::CreateMetafield.new(
    #         "Text field #{SecureRandom.hex(4)}"
    #       )
    #     )
    #   ]
    # )

    # result = client.custom_fields.create_metafields(
    #   AdvancedBilling::ResourceType::CUSTOMERS,
    #   body: AdvancedBilling::CreateMetafieldsRequest.new(
    #     AdvancedBilling::CreateMetafield.new(
    #       "Radio field #{SecureRandom.hex(4)}",
    #       AdvancedBilling::MetafieldScope.new(
    #         AdvancedBilling::IncludeOption::INCLUDE,
    #         AdvancedBilling::IncludeOption::INCLUDE,
    #         AdvancedBilling::IncludeOption::INCLUDE,
    #       ),
    #       AdvancedBilling::MetafieldInput::RADIO,
    #       [
    #         'option 1',
    #         'option 2'
    #       ]
    #     )
    #   )
    # )

    # result = client.custom_fields.list_metadata(
    #   'resource_type' => AdvancedBilling::ResourceType::SUBSCRIPTIONS,
    #   'resource_id' => '322944'
    # )
    
    # result = client.custom_fields.list_metafields(
    #   'resource_type' => AdvancedBilling::ResourceType::SUBSCRIPTIONS,
    # )

    # result = client.custom_fields.create_metadata(
    #   AdvancedBilling::ResourceType::SUBSCRIPTIONS,
    #   '322944', # resource_id, subscription
    #   body: AdvancedBilling::CreateMetadataRequest.new(
    #     [
    #       AdvancedBilling::CreateMetadata.new(
    #         'Text field a2303bed',
    #         'test1'
    #       )
    #     ]
    #   )
    # )

    # result = client.subscriptions.list_subscriptions(
    #   'metadata' => {
    #     'Text field a2303bed' => 'test1'
    #   }
    # )

    # puts result.size
  end
end

