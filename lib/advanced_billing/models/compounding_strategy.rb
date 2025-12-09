# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Applicable only to stackable coupons. For `compound`, Percentage-based
  # discounts will be calculated against the remaining price, after prior
  # discounts have been calculated. For `full-price`, Percentage-based discounts
  # will always be calculated against the original item price, before other
  # discounts are applied.
  class CompoundingStrategy
    COMPOUNDING_STRATEGY = [
      # TODO: Write general description for COMPOUND
      COMPOUND = 'compound'.freeze,

      # TODO: Write general description for FULLPRICE
      FULLPRICE = 'full-price'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      COMPOUNDING_STRATEGY.include?(value)
    end

    def self.from_value(value, default_value = COMPOUND)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'compound' then COMPOUND
      when 'fullprice' then FULLPRICE
      else
        default_value
      end
    end
  end
end
