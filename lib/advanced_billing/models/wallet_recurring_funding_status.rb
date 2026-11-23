# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # `active`: refilling normally. `erroring`: the schedule is still due and
  # retrying, but the last attempt couldn't be written (see `reason`);
  # correcting the underlying entitlement resumes funding on the next run with
  # no action needed on the wallet itself. `stopped`: funding has ended for good
  # (see `reason`); units already granted stay on the wallet and remain
  # spendable, but no further automatic grants will be made.
  class WalletRecurringFundingStatus
    WALLET_RECURRING_FUNDING_STATUS = [
      # TODO: Write general description for ACTIVE
      ACTIVE = 'active'.freeze,

      # TODO: Write general description for ERRORING
      ERRORING = 'erroring'.freeze,

      # TODO: Write general description for STOPPED
      STOPPED = 'stopped'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      WALLET_RECURRING_FUNDING_STATUS.include?(value)
    end

    def self.from_value(value, default_value = ACTIVE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'active' then ACTIVE
      when 'erroring' then ERRORING
      when 'stopped' then STOPPED
      else
        default_value
      end
    end
  end
end
