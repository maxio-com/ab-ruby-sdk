# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Invoice Discount Type.
  class InvoiceDiscountType
    INVOICE_DISCOUNT_TYPE = [
      # TODO: Write general description for PERCENTAGE
      PERCENTAGE = 'percentage'.freeze,

      # TODO: Write general description for FLAT_AMOUNT
      FLAT_AMOUNT = 'flat_amount'.freeze,

      # TODO: Write general description for ROLLOVER
      ROLLOVER = 'rollover'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INVOICE_DISCOUNT_TYPE.include?(value)
    end

    def self.from_value(value, default_value = PERCENTAGE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'percentage' then PERCENTAGE
      when 'flat_amount' then FLAT_AMOUNT
      when 'rollover' then ROLLOVER
      else
        default_value
      end
    end
  end
end
