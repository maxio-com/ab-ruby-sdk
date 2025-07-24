# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Invoice Event Payment Method.
  class InvoiceEventPaymentMethod
    INVOICE_EVENT_PAYMENT_METHOD = [
      # TODO: Write general description for APPLE_PAY
      APPLE_PAY = 'apple_pay'.freeze,

      # TODO: Write general description for BANK_ACCOUNT
      BANK_ACCOUNT = 'bank_account'.freeze,

      # TODO: Write general description for CREDIT_CARD
      CREDIT_CARD = 'credit_card'.freeze,

      # TODO: Write general description for EXTERNAL
      EXTERNAL = 'external'.freeze,

      # TODO: Write general description for PAYPAL_ACCOUNT
      PAYPAL_ACCOUNT = 'paypal_account'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INVOICE_EVENT_PAYMENT_METHOD.include?(value)
    end
  end
end
