module Factories
  class QuantityBasedComponent
    def self.create(client, product_family:)
      client.components.create_quantity_based_component(
        product_family.id,
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
