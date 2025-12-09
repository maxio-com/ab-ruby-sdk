# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # A handle for the billing manifest line item kind
  class BillingManifestLineItemKind
    BILLING_MANIFEST_LINE_ITEM_KIND = [
      # TODO: Write general description for BASELINE
      BASELINE = 'baseline'.freeze,

      # TODO: Write general description for INITIAL
      INITIAL = 'initial'.freeze,

      # TODO: Write general description for TRIAL
      TRIAL = 'trial'.freeze,

      # TODO: Write general description for COUPON
      COUPON = 'coupon'.freeze,

      # TODO: Write general description for COMPONENT
      COMPONENT = 'component'.freeze,

      # TODO: Write general description for TAX
      TAX = 'tax'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BILLING_MANIFEST_LINE_ITEM_KIND.include?(value)
    end

    def self.from_value(value, default_value = BASELINE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'baseline' then BASELINE
      when 'initial' then INITIAL
      when 'trial' then TRIAL
      when 'coupon' then COUPON
      when 'component' then COMPONENT
      when 'tax' then TAX
      else
        default_value
      end
    end
  end
end
