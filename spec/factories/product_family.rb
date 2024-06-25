module Factories
  class ProductFamily
    def self.create(client)
      client.product_families.create_product_family(
        body: AdvancedBilling::CreateProductFamilyRequest.new(
          product_family: AdvancedBilling::CreateProductFamily.new(
            name: "developer-experience-billing-plans-" + Time.now.to_i.to_s,
            description: FFaker::Lorem.paragraph
          )
        )
      ).product_family
    end
  end
end
