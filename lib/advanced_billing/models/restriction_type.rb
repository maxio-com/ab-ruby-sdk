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
  end
end
