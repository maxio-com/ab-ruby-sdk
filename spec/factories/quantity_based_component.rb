module Factories
  class QuantityBasedComponent
    def self.create(client, product_family:)
      client.components.create_component(
        product_family.id,
        AdvancedBilling::ComponentKindPath::QUANTITY_BASED_COMPONENTS,
        body: AdvancedBilling::CreateQuantityBasedComponent.new(
          AdvancedBilling::QuantityBasedComponent.new(
            "Component #{SecureRandom.hex(4)}",
            'message',
            AdvancedBilling::PricingScheme::PER_UNIT,
            'description',
            "handle#{SecureRandom.hex(4)}",
            false,
            nil,
            'none',
            'none',
            nil,
            125,
            nil,
            nil,
            nil,
            nil,
            nil,
            true
          )
        )
      ).component
    end
  end
end
