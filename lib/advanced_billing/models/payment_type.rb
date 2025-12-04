# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Payment Type.
  class PaymentType
    PAYMENT_TYPE = [
      # TODO: Write general description for CREDIT_CARD
      CREDIT_CARD = 'credit_card'.freeze,

      # TODO: Write general description for BANK_ACCOUNT
      BANK_ACCOUNT = 'bank_account'.freeze,

      # TODO: Write general description for PAYPAL_ACCOUNT
      PAYPAL_ACCOUNT = 'paypal_account'.freeze,

      # TODO: Write general description for APPLE_PAY
      APPLE_PAY = 'apple_pay'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PAYMENT_TYPE.include?(value)
    end

    def self.from_value(value, default_value = CREDIT_CARD)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'credit_card' then CREDIT_CARD
      when 'bank_account' then BANK_ACCOUNT
      when 'paypal_account' then PAYPAL_ACCOUNT
      when 'apple_pay' then APPLE_PAY
      else
        default_value
      end
    end
  end
end
