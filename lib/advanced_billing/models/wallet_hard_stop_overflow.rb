# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Behavior at the hard-stop boundary. `discard` drains the wallet to zero and
  # rejects the excess (the default). `allow_negative` deducts the full amount,
  # letting the balance go negative. The excess past the wallet's grants is
  # booked as an overdraft ledger row with `grant_id` set to `null`.
  class WalletHardStopOverflow
    WALLET_HARD_STOP_OVERFLOW = [
      # TODO: Write general description for DISCARD
      DISCARD = 'discard'.freeze,

      # TODO: Write general description for ALLOW_NEGATIVE
      ALLOW_NEGATIVE = 'allow_negative'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      WALLET_HARD_STOP_OVERFLOW.include?(value)
    end

    def self.from_value(value, default_value = DISCARD)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'discard' then DISCARD
      when 'allow_negative' then ALLOW_NEGATIVE
      else
        default_value
      end
    end
  end
end
