module Factories
  class OnOffComponent
    def self.create(client, product_family:)
      client.components.create_on_off_component(
        product_family.id,
        body: AdvancedBilling::CreateOnOffComponent.new(
          on_off_component: AdvancedBilling::OnOffComponent.new(
            name: "Component #{SecureRandom.hex(4)}",
            description: 'desc',
            handle: "handle#{SecureRandom.hex(4)}",
            taxable: false,
            upgrade_charge: 'none',
            downgrade_credit: 'none',
            price_points: [
              AdvancedBilling::ComponentPricePointItem.new(
                name: 'name123',
                prices: [
                  AdvancedBilling::Price.new(
                    starting_quantity: 40,
                    unit_price: 10.0,
                    ending_quantity: 125.12
                  )
                ]
              )
            ],
            unit_price: 125.12,
            allow_fractional_quantities: false
          )
        )
      ).component
    end
  end
end
