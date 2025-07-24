# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Indicates how data should be added to the metafield. For example, a text
  # type is just a string, so a given metafield of this type can have any value
  # attached. On the other hand, dropdown and radio have a set of allowed values
  # that can be input, and appear differently on a Public Signup Page. Defaults
  # to 'text'
  class MetafieldInput
    METAFIELD_INPUT = [
      # TODO: Write general description for BALANCE_TRACKER
      BALANCE_TRACKER = 'balance_tracker'.freeze,

      # TODO: Write general description for TEXT
      TEXT = 'text'.freeze,

      # TODO: Write general description for RADIO
      RADIO = 'radio'.freeze,

      # TODO: Write general description for DROPDOWN
      DROPDOWN = 'dropdown'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      METAFIELD_INPUT.include?(value)
    end
  end
end
