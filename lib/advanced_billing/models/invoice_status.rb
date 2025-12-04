# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The current status of the invoice. See [Invoice
  # Statuses](https://maxio.zendesk.com/hc/en-us/articles/24252287829645-Advance
  # d-Billing-Invoices-Overview#invoice-statuses) for more.
  class InvoiceStatus
    INVOICE_STATUS = [
      # TODO: Write general description for DRAFT
      DRAFT = 'draft'.freeze,

      # TODO: Write general description for OPEN
      OPEN = 'open'.freeze,

      # TODO: Write general description for PAID
      PAID = 'paid'.freeze,

      # TODO: Write general description for PENDING
      PENDING = 'pending'.freeze,

      # TODO: Write general description for VOIDED
      VOIDED = 'voided'.freeze,

      # TODO: Write general description for CANCELED
      CANCELED = 'canceled'.freeze,

      # TODO: Write general description for PROCESSING
      PROCESSING = 'processing'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INVOICE_STATUS.include?(value)
    end

    def self.from_value(value, default_value = DRAFT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'draft' then DRAFT
      when 'open' then OPEN
      when 'paid' then PAID
      when 'pending' then PENDING
      when 'voided' then VOIDED
      when 'canceled' then CANCELED
      when 'processing' then PROCESSING
      else
        default_value
      end
    end
  end
end
