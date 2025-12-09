# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Subscription List Include.
  class SubscriptionListInclude
    SUBSCRIPTION_LIST_INCLUDE = [
      # TODO: Write general description for SELF_SERVICE_PAGE_TOKEN
      SELF_SERVICE_PAGE_TOKEN = 'self_service_page_token'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_LIST_INCLUDE.include?(value)
    end

    def self.from_value(value, default_value = SELF_SERVICE_PAGE_TOKEN)
      return default_value if value.nil?

      default_value
    end
  end
end
