# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Subscription List Include.
  class SubscriptionListInclude
    SUBSCRIPTION_LIST_INCLUDE = [
      # TODO: Write general description for SELF_SERVICE_PAGE_TOKEN
      SELF_SERVICE_PAGE_TOKEN = 'self_service_page_token'.freeze,

      # TODO: Write general description for CURRENT_ACCOUNT_BALANCE_IN_CENTS
      CURRENT_ACCOUNT_BALANCE_IN_CENTS = 'current_account_balance_in_cents'.freeze,

      # TODO: Write general description for CURRENT_BILLING_AMOUNT
      CURRENT_BILLING_AMOUNT = 'current_billing_amount'.freeze,

      # TODO: Write general description for THREE_DS_ACTION_LINK
      THREE_DS_ACTION_LINK = 'three_ds_action_link'.freeze,

      # TODO: Write general description for COUPONS
      COUPONS = 'coupons'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_LIST_INCLUDE.include?(value)
    end

    def self.from_value(value, default_value = SELF_SERVICE_PAGE_TOKEN)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'self_service_page_token' then SELF_SERVICE_PAGE_TOKEN
      when 'current_account_balance_in_cents' then CURRENT_ACCOUNT_BALANCE_IN_CENTS
      when 'current_billing_amount' then CURRENT_BILLING_AMOUNT
      when 'three_ds_action_link' then THREE_DS_ACTION_LINK
      when 'coupons' then COUPONS
      else
        default_value
      end
    end
  end
end
