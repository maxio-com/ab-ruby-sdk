# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Invoice Event Type
  class InvoiceEventType
    INVOICE_EVENT_TYPE = [
      # TODO: Write general description for ISSUE_INVOICE
      ISSUE_INVOICE = 'issue_invoice'.freeze,

      # TODO: Write general description for APPLY_CREDIT_NOTE
      APPLY_CREDIT_NOTE = 'apply_credit_note'.freeze,

      # TODO: Write general description for CREATE_CREDIT_NOTE
      CREATE_CREDIT_NOTE = 'create_credit_note'.freeze,

      # TODO: Write general description for APPLY_PAYMENT
      APPLY_PAYMENT = 'apply_payment'.freeze,

      # TODO: Write general description for APPLY_DEBIT_NOTE
      APPLY_DEBIT_NOTE = 'apply_debit_note'.freeze,

      # TODO: Write general description for CREATE_DEBIT_NOTE
      CREATE_DEBIT_NOTE = 'create_debit_note'.freeze,

      # TODO: Write general description for REFUND_INVOICE
      REFUND_INVOICE = 'refund_invoice'.freeze,

      # TODO: Write general description for VOID_INVOICE
      VOID_INVOICE = 'void_invoice'.freeze,

      # TODO: Write general description for VOID_REMAINDER
      VOID_REMAINDER = 'void_remainder'.freeze,

      # TODO: Write general description for BACKPORT_INVOICE
      BACKPORT_INVOICE = 'backport_invoice'.freeze,

      # TODO: Write general description for CHANGE_INVOICE_STATUS
      CHANGE_INVOICE_STATUS = 'change_invoice_status'.freeze,

      # TODO: Write general description for CHANGE_INVOICE_COLLECTION_METHOD
      CHANGE_INVOICE_COLLECTION_METHOD = 'change_invoice_collection_method'.freeze,

      # TODO: Write general description for REMOVE_PAYMENT
      REMOVE_PAYMENT = 'remove_payment'.freeze,

      # TODO: Write general description for FAILED_PAYMENT
      FAILED_PAYMENT = 'failed_payment'.freeze,

      # TODO: Write general description for CHANGE_CHARGEBACK_STATUS
      CHANGE_CHARGEBACK_STATUS = 'change_chargeback_status'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INVOICE_EVENT_TYPE.include?(value)
    end

    def self.from_value(value, default_value = ISSUE_INVOICE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'issue_invoice' then ISSUE_INVOICE
      when 'apply_credit_note' then APPLY_CREDIT_NOTE
      when 'create_credit_note' then CREATE_CREDIT_NOTE
      when 'apply_payment' then APPLY_PAYMENT
      when 'apply_debit_note' then APPLY_DEBIT_NOTE
      when 'create_debit_note' then CREATE_DEBIT_NOTE
      when 'refund_invoice' then REFUND_INVOICE
      when 'void_invoice' then VOID_INVOICE
      when 'void_remainder' then VOID_REMAINDER
      when 'backport_invoice' then BACKPORT_INVOICE
      when 'change_invoice_status' then CHANGE_INVOICE_STATUS
      when 'change_invoice_collection_method' then CHANGE_INVOICE_COLLECTION_METHOD
      when 'remove_payment' then REMOVE_PAYMENT
      when 'failed_payment' then FAILED_PAYMENT
      when 'change_chargeback_status' then CHANGE_CHARGEBACK_STATUS
      else
        default_value
      end
    end
  end
end
