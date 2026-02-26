# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Subscription Sort.
  class SubscriptionSort
    SUBSCRIPTION_SORT = [
      # TODO: Write general description for SIGNUP_DATE
      SIGNUP_DATE = 'signup_date'.freeze,

      # TODO: Write general description for PERIOD_START
      PERIOD_START = 'period_start'.freeze,

      # TODO: Write general description for PERIOD_END
      PERIOD_END = 'period_end'.freeze,

      # TODO: Write general description for NEXT_ASSESSMENT
      NEXT_ASSESSMENT = 'next_assessment'.freeze,

      # TODO: Write general description for UPDATED_AT
      UPDATED_AT = 'updated_at'.freeze,

      # TODO: Write general description for CREATED_AT
      CREATED_AT = 'created_at'.freeze,

      # TODO: Write general description for TOTAL_PAYMENTS
      TOTAL_PAYMENTS = 'total_payments'.freeze,

      # TODO: Write general description for ID
      ID = 'id'.freeze,

      # TODO: Write general description for OPEN_BALANCE
      OPEN_BALANCE = 'open_balance'.freeze,

      # TODO: Write general description for EXPIRES_AT
      EXPIRES_AT = 'expires_at'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_SORT.include?(value)
    end

    def self.from_value(value, default_value = SIGNUP_DATE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'signup_date' then SIGNUP_DATE
      when 'period_start' then PERIOD_START
      when 'period_end' then PERIOD_END
      when 'next_assessment' then NEXT_ASSESSMENT
      when 'updated_at' then UPDATED_AT
      when 'created_at' then CREATED_AT
      when 'total_payments' then TOTAL_PAYMENTS
      when 'id' then ID
      when 'open_balance' then OPEN_BALANCE
      when 'expires_at' then EXPIRES_AT
      else
        default_value
      end
    end
  end
end
