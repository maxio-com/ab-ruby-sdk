# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Subscription Group Prepayment Method.
  class SubscriptionGroupPrepaymentMethod
    SUBSCRIPTION_GROUP_PREPAYMENT_METHOD = [
      # TODO: Write general description for CHECK
      CHECK = 'check'.freeze,

      # TODO: Write general description for CASH
      CASH = 'cash'.freeze,

      # TODO: Write general description for MONEY_ORDER
      MONEY_ORDER = 'money_order'.freeze,

      # TODO: Write general description for ACH
      ACH = 'ach'.freeze,

      # TODO: Write general description for PAYPAL_ACCOUNT
      PAYPAL_ACCOUNT = 'paypal_account'.freeze,

      # TODO: Write general description for OTHER
      OTHER = 'other'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_GROUP_PREPAYMENT_METHOD.include?(value)
    end

    def self.from_value(value, default_value = CHECK)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'check' then CHECK
      when 'cash' then CASH
      when 'money_order' then MONEY_ORDER
      when 'ach' then ACH
      when 'paypal_account' then PAYPAL_ACCOUNT
      when 'other' then OTHER
      else
        default_value
      end
    end
  end
end
