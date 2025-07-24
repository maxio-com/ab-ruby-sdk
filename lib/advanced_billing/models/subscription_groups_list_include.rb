# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Subscription Groups List Include.
  class SubscriptionGroupsListInclude
    SUBSCRIPTION_GROUPS_LIST_INCLUDE = [
      # TODO: Write general description for ACCOUNT_BALANCES
      ACCOUNT_BALANCES = 'account_balances'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_GROUPS_LIST_INCLUDE.include?(value)
    end
  end
end
