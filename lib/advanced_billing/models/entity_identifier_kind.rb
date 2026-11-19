# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The kind of tax or business identifier held by the customer: - `vat_eu`: an
  # EU VAT number. Requires `vat_country` to be an EU member state code or `GB`.
  # - `national_tax`: a national tax ID registered outside the EU. Requires
  # `vat_country` to be one of `AL`, `AM`, `AR`, `AU`, `BR`, `CA`, `CH`, `DZ`,
  # `IN`, `MX`, `NO`, `NZ`, or `ZA`. - `company_reg`: a company registration
  # number, such as a French SIREN. No `vat_country` is required. - `gln`: a
  # Global Location Number. The value must be 13 digits. - `duns`: a D-U-N-S
  # Number. The value must be 9 digits. - `lei`: a Legal Entity Identifier. The
  # value must be 20 characters: 18 letters or digits followed by 2 digits. A
  # customer holds one identifier at a time. Saving an identifier of a different
  # kind replaces the existing one.
  class EntityIdentifierKind
    ENTITY_IDENTIFIER_KIND = [
      # TODO: Write general description for VAT_EU
      VAT_EU = 'vat_eu'.freeze,

      # TODO: Write general description for NATIONAL_TAX
      NATIONAL_TAX = 'national_tax'.freeze,

      # TODO: Write general description for COMPANY_REG
      COMPANY_REG = 'company_reg'.freeze,

      # TODO: Write general description for GLN
      GLN = 'gln'.freeze,

      # TODO: Write general description for DUNS
      DUNS = 'duns'.freeze,

      # TODO: Write general description for LEI
      LEI = 'lei'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ENTITY_IDENTIFIER_KIND.include?(value)
    end

    def self.from_value(value, default_value = VAT_EU)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'vat_eu' then VAT_EU
      when 'national_tax' then NATIONAL_TAX
      when 'company_reg' then COMPANY_REG
      when 'gln' then GLN
      when 'duns' then DUNS
      when 'lei' then LEI
      else
        default_value
      end
    end
  end
end
