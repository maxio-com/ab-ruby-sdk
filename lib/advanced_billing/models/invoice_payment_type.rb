# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The type of payment to be applied to an Invoice. Defaults to external.
  class InvoicePaymentType
    INVOICE_PAYMENT_TYPE = [
      # TODO: Write general description for EXTERNAL
      EXTERNAL = 'external'.freeze,

      # TODO: Write general description for PREPAYMENT
      PREPAYMENT = 'prepayment'.freeze,

      # TODO: Write general description for SERVICE_CREDIT
      SERVICE_CREDIT = 'service_credit'.freeze,

      # TODO: Write general description for PAYMENT
      PAYMENT = 'payment'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INVOICE_PAYMENT_TYPE.include?(value)
    end

    def self.from_value(value, default_value = EXTERNAL)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'external' then EXTERNAL
      when 'prepayment' then PREPAYMENT
      when 'service_credit' then SERVICE_CREDIT
      when 'payment' then PAYMENT
      else
        default_value
      end
    end
  end
end
