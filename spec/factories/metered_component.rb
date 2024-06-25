module Factories
  class MeteredComponent
    def self.create(client, product_family:)
      token = SecureRandom.hex(6)

      client.components.create_metered_component(
        product_family.id,
        body: AdvancedBilling::CreateMeteredComponent.new(
          metered_component: AdvancedBilling::MeteredComponent.new(
            name: "#{FFaker::Product.product_name}#{token}",
            unit_name: FFaker::Lorem.word,
            pricing_scheme: AdvancedBilling::PricingScheme::STAIRSTEP,
            taxable: false,
            prices: [
              AdvancedBilling::Price.from_hash(
                'starting_quantity' => 1,
                'unit_price' => 1.0
              )
            ],
          )
        )    
      ).component
    end
  end
end
