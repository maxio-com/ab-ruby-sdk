# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

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
  end
end
