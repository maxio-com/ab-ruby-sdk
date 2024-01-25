module Factories
  class OnOffComponent
    def self.create(client, product_family:)
      client.components.create_component(
        product_family.id,
        AdvancedBilling::ComponentKindPath::ON_OFF_COMPONENTS,
        body: AdvancedBilling::CreateOnOffComponent.new(
          AdvancedBilling::OnOffComponent.new(
            "Component #{SecureRandom.hex(4)}",
            'desc',
            "handle#{SecureRandom.hex(4)}",
            false,
            [
              AdvancedBilling::Price.new(
                40,
                10.0,
                125.12
              )
            ],
            'none',
            'none',
            [
              AdvancedBilling::ComponentPricePointItem.new(
                'name123',
                nil,
                nil,
                nil,
                nil,
                [
                  AdvancedBilling::Price.new(
                    40,
                    10.0,
                    125.12
                  )
                ]
              )
            ],
            125.12,
            nil,
            nil,
            nil,
            nil,
            false
          )
        )
      ).component
    end
  end
end
