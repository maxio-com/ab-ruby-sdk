# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Proforma Invoice Tax Source Type.
  class ProformaInvoiceTaxSourceType
    PROFORMA_INVOICE_TAX_SOURCE_TYPE = [
      # TODO: Write general description for TAX
      TAX = 'Tax'.freeze,

      # TODO: Write general description for AVALARA
      AVALARA = 'Avalara'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PROFORMA_INVOICE_TAX_SOURCE_TYPE.include?(value)
    end
  end
end
