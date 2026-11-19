# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # List Components Price Points Include.
  class ListComponentsPricePointsInclude
    LIST_COMPONENTS_PRICE_POINTS_INCLUDE = [
      # TODO: Write general description for CURRENCY_PRICES
      CURRENCY_PRICES = 'currency_prices'.freeze,

      # TODO: Write general description for CURRENCY_OVERAGE_PRICES
      CURRENCY_OVERAGE_PRICES = 'currency_overage_prices'.freeze,

      # TODO: Write general description for CURRENCY_SECONDARY_PRICES
      CURRENCY_SECONDARY_PRICES = 'currency_secondary_prices'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      LIST_COMPONENTS_PRICE_POINTS_INCLUDE.include?(value)
    end

    def self.from_value(value, default_value = CURRENCY_PRICES)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'currency_prices' then CURRENCY_PRICES
      when 'currency_overage_prices' then CURRENCY_OVERAGE_PRICES
      when 'currency_secondary_prices' then CURRENCY_SECONDARY_PRICES
      else
        default_value
      end
    end
  end
end
