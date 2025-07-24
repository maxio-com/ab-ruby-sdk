# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Create Invoice Status.
  class CreateInvoiceStatus
    CREATE_INVOICE_STATUS = [
      # TODO: Write general description for DRAFT
      DRAFT = 'draft'.freeze,

      # TODO: Write general description for OPEN
      OPEN = 'open'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CREATE_INVOICE_STATUS.include?(value)
    end
  end
end
