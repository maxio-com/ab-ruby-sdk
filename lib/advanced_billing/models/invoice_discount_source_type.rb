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

    def self.from_value(value, default_value = COUPON)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'coupon' then COUPON
      when 'referral' then REFERRAL
      when 'enum_ad_hoc_coupon' then ENUM_AD_HOC_COUPON
      else
        default_value
      end
    end
  end
end
