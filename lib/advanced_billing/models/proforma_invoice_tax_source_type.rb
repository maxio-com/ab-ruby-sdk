# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The source of the tax. `Tax` is a tax configured in Advanced Billing. The
  # other values identify the tax service that calculated the tax.
  class ProformaInvoiceTaxSourceType
    PROFORMA_INVOICE_TAX_SOURCE_TYPE = [
      # TODO: Write general description for TAX
      TAX = 'Tax'.freeze,

      # TODO: Write general description for AVALARA
      AVALARA = 'Avalara'.freeze,

      # TODO: Write general description for ANROK
      ANROK = 'Anrok'.freeze,

      # TODO: Write general description for TAXJAR
      TAXJAR = 'TaxJar'.freeze,

      # TODO: Write general description for NUMERAL
      NUMERAL = 'Numeral'.freeze,

      # TODO: Write general description for SPHERE
      SPHERE = 'Sphere'.freeze,

      # TODO: Write general description for TAXWIRE
      TAXWIRE = 'Taxwire'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PROFORMA_INVOICE_TAX_SOURCE_TYPE.include?(value)
    end

    def self.from_value(value, default_value = TAX)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'tax' then TAX
      when 'avalara' then AVALARA
      when 'anrok' then ANROK
      when 'taxjar' then TAXJAR
      when 'numeral' then NUMERAL
      when 'sphere' then SPHERE
      when 'taxwire' then TAXWIRE
      else
        default_value
      end
    end
  end
end
