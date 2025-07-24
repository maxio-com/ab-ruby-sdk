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
  end
end
