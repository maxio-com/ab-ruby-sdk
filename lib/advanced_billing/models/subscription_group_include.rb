# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Subscription Group Include.
  class SubscriptionGroupInclude
    SUBSCRIPTION_GROUP_INCLUDE = [
      # TODO: Write general description for CURRENT_BILLING_AMOUNT_IN_CENTS
      CURRENT_BILLING_AMOUNT_IN_CENTS = 'current_billing_amount_in_cents'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_GROUP_INCLUDE.include?(value)
    end
  end
end
