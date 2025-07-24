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
  end
end
