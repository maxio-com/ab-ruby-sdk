# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # How the grant was created. `recurring` comes from the wallet's automatic
  # funding schedule (see the wallet's `recurring_funding` array). `manual`
  # comes from a one-time grant posted to [Create Wallet
  # Transaction]($e/Wallet%20Transactions/createWalletTransaction).
  # `initial_balance` comes from a non-zero `initial_balance` at wallet
  # creation. `allowance_increase` comes from raising a funding entitlement's
  # allowance while it's already funding a wallet. `purchase` comes from [Create
  # Wallet Purchase]($e/Wallet%20Purchases/createWalletPurchase).
  class Origin
    ORIGIN = [
      # TODO: Write general description for RECURRING
      RECURRING = 'recurring'.freeze,

      # TODO: Write general description for MANUAL
      MANUAL = 'manual'.freeze,

      # TODO: Write general description for INITIAL_BALANCE
      INITIAL_BALANCE = 'initial_balance'.freeze,

      # TODO: Write general description for ALLOWANCE_INCREASE
      ALLOWANCE_INCREASE = 'allowance_increase'.freeze,

      # TODO: Write general description for PURCHASE
      PURCHASE = 'purchase'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ORIGIN.include?(value)
    end

    def self.from_value(value, default_value = RECURRING)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'recurring' then RECURRING
      when 'manual' then MANUAL
      when 'initial_balance' then INITIAL_BALANCE
      when 'allowance_increase' then ALLOWANCE_INCREASE
      when 'purchase' then PURCHASE
      else
        default_value
      end
    end
  end
end
