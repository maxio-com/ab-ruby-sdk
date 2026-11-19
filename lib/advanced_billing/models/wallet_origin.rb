# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # How the wallet came to exist. `manual` for a wallet created directly with
  # [Create Wallet]($e/Wallets/createWallet). `feature` for a wallet
  # auto-provisioned because a subscription resolved a usage-limit entitlement
  # whose Feature has `wallet_behavior` configured.
  class WalletOrigin
    WALLET_ORIGIN = [
      # TODO: Write general description for MANUAL
      MANUAL = 'manual'.freeze,

      # TODO: Write general description for FEATURE
      FEATURE = 'feature'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      WALLET_ORIGIN.include?(value)
    end

    def self.from_value(value, default_value = MANUAL)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'manual' then MANUAL
      when 'feature' then FEATURE
      else
        default_value
      end
    end
  end
end
