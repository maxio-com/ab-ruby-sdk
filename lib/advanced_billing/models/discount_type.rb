# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Discount Type.
  class DiscountType
    DISCOUNT_TYPE = [
      # TODO: Write general description for AMOUNT
      AMOUNT = 'amount'.freeze,

      # TODO: Write general description for PERCENT
      PERCENT = 'percent'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DISCOUNT_TYPE.include?(value)
    end

    def self.from_value(value, default_value = AMOUNT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'amount' then AMOUNT
      when 'percent' then PERCENT
      else
        default_value
      end
    end
  end
end
