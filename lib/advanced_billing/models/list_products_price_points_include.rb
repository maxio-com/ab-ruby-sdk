# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # List Products Price Points Include.
  class ListProductsPricePointsInclude
    LIST_PRODUCTS_PRICE_POINTS_INCLUDE = [
      # TODO: Write general description for CURRENCY_PRICES
      CURRENCY_PRICES = 'currency_prices'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      LIST_PRODUCTS_PRICE_POINTS_INCLUDE.include?(value)
    end
  end
end
