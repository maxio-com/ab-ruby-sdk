# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Subscription List Date Field.
  class SubscriptionListDateField
    SUBSCRIPTION_LIST_DATE_FIELD = [
      # TODO: Write general description for UPDATED_AT
      UPDATED_AT = 'updated_at'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_LIST_DATE_FIELD.include?(value)
    end

    def self.from_value(value, default_value = UPDATED_AT)
      return default_value if value.nil?

      default_value
    end
  end
end
