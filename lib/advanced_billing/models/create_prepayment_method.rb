# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # :- When the `method` specified is `"credit_card_on_file"`, the prepayment
  # amount will be collected using the default credit card payment profile and
  # applied to the prepayment account balance. This is especially useful for
  # manual replenishment of prepaid subscriptions.
  class CreatePrepaymentMethod
    CREATE_PREPAYMENT_METHOD = [
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

      # TODO: Write general description for CREDIT_CARD
      CREDIT_CARD = 'credit_card'.freeze,

      # TODO: Write general description for CREDIT_CARD_ON_FILE
      CREDIT_CARD_ON_FILE = 'credit_card_on_file'.freeze,

      # TODO: Write general description for OTHER
      OTHER = 'other'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CREATE_PREPAYMENT_METHOD.include?(value)
    end
  end
end
