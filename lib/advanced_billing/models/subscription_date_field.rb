# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Subscription Date Field.
  class SubscriptionDateField
    SUBSCRIPTION_DATE_FIELD = [
      # TODO: Write general description for CURRENT_PERIOD_ENDS_AT
      CURRENT_PERIOD_ENDS_AT = 'current_period_ends_at'.freeze,

      # TODO: Write general description for CURRENT_PERIOD_STARTS_AT
      CURRENT_PERIOD_STARTS_AT = 'current_period_starts_at'.freeze,

      # TODO: Write general description for CREATED_AT
      CREATED_AT = 'created_at'.freeze,

      # TODO: Write general description for ACTIVATED_AT
      ACTIVATED_AT = 'activated_at'.freeze,

      # TODO: Write general description for CANCELED_AT
      CANCELED_AT = 'canceled_at'.freeze,

      # TODO: Write general description for EXPIRES_AT
      EXPIRES_AT = 'expires_at'.freeze,

      # TODO: Write general description for TRIAL_STARTED_AT
      TRIAL_STARTED_AT = 'trial_started_at'.freeze,

      # TODO: Write general description for TRIAL_ENDED_AT
      TRIAL_ENDED_AT = 'trial_ended_at'.freeze,

      # TODO: Write general description for UPDATED_AT
      UPDATED_AT = 'updated_at'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_DATE_FIELD.include?(value)
    end

    def self.from_value(value, default_value = CURRENT_PERIOD_ENDS_AT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'current_period_ends_at' then CURRENT_PERIOD_ENDS_AT
      when 'current_period_starts_at' then CURRENT_PERIOD_STARTS_AT
      when 'created_at' then CREATED_AT
      when 'activated_at' then ACTIVATED_AT
      when 'canceled_at' then CANCELED_AT
      when 'expires_at' then EXPIRES_AT
      when 'trial_started_at' then TRIAL_STARTED_AT
      when 'trial_ended_at' then TRIAL_ENDED_AT
      when 'updated_at' then UPDATED_AT
      else
        default_value
      end
    end
  end
end
