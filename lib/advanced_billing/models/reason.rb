# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Set whenever `status` isn't `active`. Accompanying `stopped`:
  # `entitlement_missing` (an ordinary product or component change removed the
  # entitlement), `wallet_archived` (the wallet was archived),
  # `subscription_terminated` (the subscription reached a terminal state;
  # funding resumes if the subscription returns to a granting state, for example
  # on reactivation, without back-granting the periods it missed),
  # `feature_removed` (the subscription no longer has this Feature),
  # `wallet_behavior_disabled` (the Feature no longer has `wallet_behavior`
  # configured), `superseded_by_replacement` (a later entitlement now funds this
  # wallet instead), or `subscription_prepaid` (the subscription switched to
  # prepaid, which cannot carry an active wallet). Accompanying `erroring`:
  # `allowance_not_representable` (the entitlement's current allowance doesn't
  # fit the wallet's amount encoding) or `balance_at_capacity` (granting it
  # would push the balance past the maximum supported value).
  class Reason
    REASON = [
      # TODO: Write general description for ENTITLEMENT_MISSING
      ENTITLEMENT_MISSING = 'entitlement_missing'.freeze,

      # TODO: Write general description for WALLET_ARCHIVED
      WALLET_ARCHIVED = 'wallet_archived'.freeze,

      # TODO: Write general description for SUBSCRIPTION_TERMINATED
      SUBSCRIPTION_TERMINATED = 'subscription_terminated'.freeze,

      # TODO: Write general description for FEATURE_REMOVED
      FEATURE_REMOVED = 'feature_removed'.freeze,

      # TODO: Write general description for WALLET_BEHAVIOR_DISABLED
      WALLET_BEHAVIOR_DISABLED = 'wallet_behavior_disabled'.freeze,

      # TODO: Write general description for SUPERSEDED_BY_REPLACEMENT
      SUPERSEDED_BY_REPLACEMENT = 'superseded_by_replacement'.freeze,

      # TODO: Write general description for SUBSCRIPTION_PREPAID
      SUBSCRIPTION_PREPAID = 'subscription_prepaid'.freeze,

      # TODO: Write general description for ALLOWANCE_NOT_REPRESENTABLE
      ALLOWANCE_NOT_REPRESENTABLE = 'allowance_not_representable'.freeze,

      # TODO: Write general description for BALANCE_AT_CAPACITY
      BALANCE_AT_CAPACITY = 'balance_at_capacity'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      REASON.include?(value)
    end

    def self.from_value(value, default_value = ENTITLEMENT_MISSING)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'entitlement_missing' then ENTITLEMENT_MISSING
      when 'wallet_archived' then WALLET_ARCHIVED
      when 'subscription_terminated' then SUBSCRIPTION_TERMINATED
      when 'feature_removed' then FEATURE_REMOVED
      when 'wallet_behavior_disabled' then WALLET_BEHAVIOR_DISABLED
      when 'superseded_by_replacement' then SUPERSEDED_BY_REPLACEMENT
      when 'subscription_prepaid' then SUBSCRIPTION_PREPAID
      when 'allowance_not_representable' then ALLOWANCE_NOT_REPRESENTABLE
      when 'balance_at_capacity' then BALANCE_AT_CAPACITY
      else
        default_value
      end
    end
  end
end
