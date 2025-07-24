# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The vault that stores the payment profile with the provided vault_token.
  class PayPalVault
    PAY_PAL_VAULT = [
      # TODO: Write general description for BRAINTREE_BLUE
      BRAINTREE_BLUE = 'braintree_blue'.freeze,

      # TODO: Write general description for PAYPAL
      PAYPAL = 'paypal'.freeze,

      # TODO: Write general description for MODUSLINK
      MODUSLINK = 'moduslink'.freeze,

      # TODO: Write general description for PAYPAL_COMPLETE
      PAYPAL_COMPLETE = 'paypal_complete'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PAY_PAL_VAULT.include?(value)
    end
  end
end
