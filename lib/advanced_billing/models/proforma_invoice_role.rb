# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # 'proforma' value is deprecated in favor of proforma_adhoc and
  # proforma_automatic
  class ProformaInvoiceRole
    PROFORMA_INVOICE_ROLE = [
      # TODO: Write general description for UNSET
      UNSET = 'unset'.freeze,

      # TODO: Write general description for PROFORMA
      PROFORMA = 'proforma'.freeze,

      # TODO: Write general description for PROFORMA_ADHOC
      PROFORMA_ADHOC = 'proforma_adhoc'.freeze,

      # TODO: Write general description for PROFORMA_AUTOMATIC
      PROFORMA_AUTOMATIC = 'proforma_automatic'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PROFORMA_INVOICE_ROLE.include?(value)
    end

    def self.from_value(value, default_value = UNSET)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'unset' then UNSET
      when 'proforma' then PROFORMA
      when 'proforma_adhoc' then PROFORMA_ADHOC
      when 'proforma_automatic' then PROFORMA_AUTOMATIC
      else
        default_value
      end
    end
  end
end
