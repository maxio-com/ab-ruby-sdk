module Factories
  class Product
    def self.create(client, product_family:)
      client.products.create_product(
        product_family.id,
        body: AdvancedBilling::CreateOrUpdateProductRequest.new(
          AdvancedBilling::CreateOrUpdateProduct.from_hash(
            'name' => FFaker::Product.product_name,
            'description' => FFaker::Lorem.paragraph,
            'price_in_cents' => 1000,
            'interval' => 1,
            'interval_unit' => AdvancedBilling::IntervalUnit::MONTH,
            'handle' => FFaker::Number.number(digits: 5),
            'accounting_code' => FFaker::Number.number(digits: 5),
            'require_credit_card' => true,
            'auto_create_signup_page' => true,
            'tax_code' => 'D0000000'
          )
        )
      ).product
    end
  end
end
