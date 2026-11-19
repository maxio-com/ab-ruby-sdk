# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Tax Configuration Kind.
  class TaxConfigurationKind
    TAX_CONFIGURATION_KIND = [
      # TODO: Write general description for CUSTOM
      CUSTOM = 'custom'.freeze,

      # TODO: Write general description for ENUM_MANAGED_AVALARA
      ENUM_MANAGED_AVALARA = 'managed avalara'.freeze,

      # TODO: Write general description for ENUM_LINKED_AVALARA
      ENUM_LINKED_AVALARA = 'linked avalara'.freeze,

      # TODO: Write general description for ENUM_DIGITAL_RIVER
      ENUM_DIGITAL_RIVER = 'digital river'.freeze,

      # TODO: Write general description for ANROK
      ANROK = 'anrok'.freeze,

      # TODO: Write general description for TAXJAR
      TAXJAR = 'taxjar'.freeze,

      # TODO: Write general description for NUMERAL
      NUMERAL = 'numeral'.freeze,

      # TODO: Write general description for SPHERE
      SPHERE = 'sphere'.freeze,

      # TODO: Write general description for TAXWIRE
      TAXWIRE = 'taxwire'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TAX_CONFIGURATION_KIND.include?(value)
    end

    def self.from_value(value, default_value = CUSTOM)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'custom' then CUSTOM
      when 'enum_managed_avalara' then ENUM_MANAGED_AVALARA
      when 'enum_linked_avalara' then ENUM_LINKED_AVALARA
      when 'enum_digital_river' then ENUM_DIGITAL_RIVER
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
