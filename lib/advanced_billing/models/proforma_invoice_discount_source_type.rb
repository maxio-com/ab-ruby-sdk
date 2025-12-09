# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Proforma Invoice Discount Source Type.
  class ProformaInvoiceDiscountSourceType
    PROFORMA_INVOICE_DISCOUNT_SOURCE_TYPE = [
      # TODO: Write general description for COUPON
      COUPON = 'Coupon'.freeze,

      # TODO: Write general description for REFERRAL
      REFERRAL = 'Referral'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PROFORMA_INVOICE_DISCOUNT_SOURCE_TYPE.include?(value)
    end

    def self.from_value(value, default_value = COUPON)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'coupon' then COUPON
      when 'referral' then REFERRAL
      else
        default_value
      end
    end
  end
end
