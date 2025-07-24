# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Role for the price.
  class CurrencyPriceRole
    CURRENCY_PRICE_ROLE = [
      # TODO: Write general description for BASELINE
      BASELINE = 'baseline'.freeze,

      # TODO: Write general description for TRIAL
      TRIAL = 'trial'.freeze,

      # TODO: Write general description for INITIAL
      INITIAL = 'initial'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CURRENCY_PRICE_ROLE.include?(value)
    end
  end
end
