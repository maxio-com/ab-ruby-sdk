# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Allowed values for filtering by the current state of the subscription.
  class SubscriptionStateFilter
    SUBSCRIPTION_STATE_FILTER = [
      # TODO: Write general description for ACTIVE
      ACTIVE = 'active'.freeze,

      # TODO: Write general description for CANCELED
      CANCELED = 'canceled'.freeze,

      # TODO: Write general description for EXPIRED
      EXPIRED = 'expired'.freeze,

      # TODO: Write general description for EXPIRED_CARDS
      EXPIRED_CARDS = 'expired_cards'.freeze,

      # TODO: Write general description for ON_HOLD
      ON_HOLD = 'on_hold'.freeze,

      # TODO: Write general description for PAST_DUE
      PAST_DUE = 'past_due'.freeze,

      # TODO: Write general description for PENDING_CANCELLATION
      PENDING_CANCELLATION = 'pending_cancellation'.freeze,

      # TODO: Write general description for PENDING_RENEWAL
      PENDING_RENEWAL = 'pending_renewal'.freeze,

      # TODO: Write general description for SUSPENDED
      SUSPENDED = 'suspended'.freeze,

      # TODO: Write general description for TRIAL_ENDED
      TRIAL_ENDED = 'trial_ended'.freeze,

      # TODO: Write general description for TRIALING
      TRIALING = 'trialing'.freeze,

      # TODO: Write general description for UNPAID
      UNPAID = 'unpaid'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_STATE_FILTER.include?(value)
    end

    def self.from_value(value, default_value = ACTIVE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'active' then ACTIVE
      when 'canceled' then CANCELED
      when 'expired' then EXPIRED
      when 'expired_cards' then EXPIRED_CARDS
      when 'on_hold' then ON_HOLD
      when 'past_due' then PAST_DUE
      when 'pending_cancellation' then PENDING_CANCELLATION
      when 'pending_renewal' then PENDING_RENEWAL
      when 'suspended' then SUSPENDED
      when 'trial_ended' then TRIAL_ENDED
      when 'trialing' then TRIALING
      when 'unpaid' then UNPAID
      else
        default_value
      end
    end
  end
end
