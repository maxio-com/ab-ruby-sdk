# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Restriction Type.
  class RestrictionType
    RESTRICTION_TYPE = [
      # TODO: Write general description for COMPONENT
      COMPONENT = 'Component'.freeze,

      # TODO: Write general description for PRODUCT
      PRODUCT = 'Product'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      RESTRICTION_TYPE.include?(value)
    end

    def self.from_value(value, default_value = COMPONENT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'component' then COMPONENT
      when 'product' then PRODUCT
      else
        default_value
      end
    end
  end
end
