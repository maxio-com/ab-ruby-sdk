# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Proforma Invoice Status.
  class ProformaInvoiceStatus
    PROFORMA_INVOICE_STATUS = [
      # TODO: Write general description for DRAFT
      DRAFT = 'draft'.freeze,

      # TODO: Write general description for VOIDED
      VOIDED = 'voided'.freeze,

      # TODO: Write general description for ARCHIVED
      ARCHIVED = 'archived'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PROFORMA_INVOICE_STATUS.include?(value)
    end

    def self.from_value(value, default_value = DRAFT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'draft' then DRAFT
      when 'voided' then VOIDED
      when 'archived' then ARCHIVED
      else
        default_value
      end
    end
  end
end
