# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Subscription Purge Type.
  class SubscriptionPurgeType
    SUBSCRIPTION_PURGE_TYPE = [
      # TODO: Write general description for CUSTOMER
      CUSTOMER = 'customer'.freeze,

      # TODO: Write general description for PAYMENT_PROFILE
      PAYMENT_PROFILE = 'payment_profile'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_PURGE_TYPE.include?(value)
    end

    def self.from_value(value, default_value = CUSTOMER)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'customer' then CUSTOMER
      when 'payment_profile' then PAYMENT_PROFILE
      else
        default_value
      end
    end
  end
end
