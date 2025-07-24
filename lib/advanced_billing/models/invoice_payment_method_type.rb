# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The type of payment method used. Defaults to other.
  class InvoicePaymentMethodType
    INVOICE_PAYMENT_METHOD_TYPE = [
      # TODO: Write general description for CREDIT_CARD
      CREDIT_CARD = 'credit_card'.freeze,

      # TODO: Write general description for CHECK
      CHECK = 'check'.freeze,

      # TODO: Write general description for CASH
      CASH = 'cash'.freeze,

      # TODO: Write general description for MONEY_ORDER
      MONEY_ORDER = 'money_order'.freeze,

      # TODO: Write general description for ACH
      ACH = 'ach'.freeze,

      # TODO: Write general description for OTHER
      OTHER = 'other'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INVOICE_PAYMENT_METHOD_TYPE.include?(value)
    end
  end
end
