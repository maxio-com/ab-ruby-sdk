# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Include Option.
  class IncludeOption
    INCLUDE_OPTION = [
      # TODO: Write general description for EXCLUDE
      EXCLUDE = '0'.freeze,

      # TODO: Write general description for INCLUDE
      INCLUDE = '1'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INCLUDE_OPTION.include?(value)
    end
  end
end
