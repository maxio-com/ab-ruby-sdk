# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The vault that stores the payment profile with the provided vault_token. Use
  # `bogus` for testing.
  class BankAccountVault
    BANK_ACCOUNT_VAULT = [
      # TODO: Write general description for AUTHORIZENET
      AUTHORIZENET = 'authorizenet'.freeze,

      # TODO: Write general description for BLUE_SNAP
      BLUE_SNAP = 'blue_snap'.freeze,

      # TODO: Write general description for BOGUS
      BOGUS = 'bogus'.freeze,

      # TODO: Write general description for FORTE
      FORTE = 'forte'.freeze,

      # TODO: Write general description for GOCARDLESS
      GOCARDLESS = 'gocardless'.freeze,

      # TODO: Write general description for MAXIO_PAYMENTS
      MAXIO_PAYMENTS = 'maxio_payments'.freeze,

      # TODO: Write general description for MAXP
      MAXP = 'maxp'.freeze,

      # TODO: Write general description for STRIPE_CONNECT
      STRIPE_CONNECT = 'stripe_connect'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BANK_ACCOUNT_VAULT.include?(value)
    end

    def self.from_value(value, default_value = AUTHORIZENET)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'authorizenet' then AUTHORIZENET
      when 'blue_snap' then BLUE_SNAP
      when 'bogus' then BOGUS
      when 'forte' then FORTE
      when 'gocardless' then GOCARDLESS
      when 'maxio_payments' then MAXIO_PAYMENTS
      when 'maxp' then MAXP
      when 'stripe_connect' then STRIPE_CONNECT
      else
        default_value
      end
    end
  end
end
