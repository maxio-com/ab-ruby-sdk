# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # List Subscription Components Include.
  class ListSubscriptionComponentsInclude
    LIST_SUBSCRIPTION_COMPONENTS_INCLUDE = [
      # TODO: Write general description for SUBSCRIPTION
      SUBSCRIPTION = 'subscription'.freeze,

      # TODO: Write general description for HISTORIC_USAGES
      HISTORIC_USAGES = 'historic_usages'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      LIST_SUBSCRIPTION_COMPONENTS_INCLUDE.include?(value)
    end
  end
end
