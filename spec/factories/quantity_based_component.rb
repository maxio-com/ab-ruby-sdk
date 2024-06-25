module Factories
  class QuantityBasedComponent
    def self.create(client, product_family:)
      client.components.create_quantity_based_component(
        product_family.id,
        body: AdvancedBilling::CreateQuantityBasedComponent.new(
          quantity_based_component: AdvancedBilling::QuantityBasedComponent.new(
            name: "Component #{SecureRandom.hex(4)}",
            unit_name: 'message',
            pricing_scheme: AdvancedBilling::PricingScheme::PER_UNIT,
            description: 'description',
            handle: "handle#{SecureRandom.hex(4)}",
            taxable: false,
            upgrade_charge: 'none',
            downgrade_credit: 'none',
            unit_price: 125,
            allow_fractional_quantities: true
          )
        )
      ).component
    end
  end
end
