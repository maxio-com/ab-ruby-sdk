module Factories
  class MeteredComponent
    def self.create(client, product_family:)
      token = SecureRandom.hex(6)

      client.components.create_component(
        product_family.id,
        AdvancedBilling::ComponentKindPath::METERED_COMPONENTS,
        body: AdvancedBilling::CreateMeteredComponent.new(
          AdvancedBilling::MeteredComponent.new(
            "#{FFaker::Product.product_name}#{token}",
            FFaker::Lorem.word,
            AdvancedBilling::PricingScheme::STAIRSTEP,
            nil,
            nil,
            false,
            [
              AdvancedBilling::Price.from_hash(
                'starting_quantity' => 1,
                'unit_price' => 1.0
              )
            ],
            nil,
            nil,
            nil,
            'USD'
          )
        )    
      ).component
    end
  end
end
