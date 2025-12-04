# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Tax Destination Address.
  class TaxDestinationAddress
    TAX_DESTINATION_ADDRESS = [
      # TODO: Write general description for SHIPPING_THEN_BILLING
      SHIPPING_THEN_BILLING = 'shipping_then_billing'.freeze,

      # TODO: Write general description for BILLING_THEN_SHIPPING
      BILLING_THEN_SHIPPING = 'billing_then_shipping'.freeze,

      # TODO: Write general description for SHIPPING_ONLY
      SHIPPING_ONLY = 'shipping_only'.freeze,

      # TODO: Write general description for BILLING_ONLY
      BILLING_ONLY = 'billing_only'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TAX_DESTINATION_ADDRESS.include?(value)
    end

    def self.from_value(value, default_value = SHIPPING_THEN_BILLING)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'shipping_then_billing' then SHIPPING_THEN_BILLING
      when 'billing_then_shipping' then BILLING_THEN_SHIPPING
      when 'shipping_only' then SHIPPING_ONLY
      when 'billing_only' then BILLING_ONLY
      else
        default_value
      end
    end
  end
end
