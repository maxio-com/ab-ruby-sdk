# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Invoice Discount Source Type.
  class InvoiceDiscountSourceType
    INVOICE_DISCOUNT_SOURCE_TYPE = [
      # TODO: Write general description for COUPON
      COUPON = 'Coupon'.freeze,

      # TODO: Write general description for REFERRAL
      REFERRAL = 'Referral'.freeze,

      # TODO: Write general description for ENUM_AD_HOC_COUPON
      ENUM_AD_HOC_COUPON = 'Ad Hoc Coupon'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INVOICE_DISCOUNT_SOURCE_TYPE.include?(value)
    end
  end
end
