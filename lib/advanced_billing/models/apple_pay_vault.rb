# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The vault that stores the payment profile with the provided vault_token.
  class ApplePayVault
    APPLE_PAY_VAULT = [
      # TODO: Write general description for BRAINTREE_BLUE
      BRAINTREE_BLUE = 'braintree_blue'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      APPLE_PAY_VAULT.include?(value)
    end
  end
end
