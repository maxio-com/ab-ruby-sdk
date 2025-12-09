# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Indicates the type of metafield. A text metafield allows any string value.
  # Dropdown and radio metafields have a set of values that can be selected.
  # Defaults to 'text'.
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

    def self.from_value(value, default_value = BALANCE_TRACKER)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'balance_tracker' then BALANCE_TRACKER
      when 'text' then TEXT
      when 'radio' then RADIO
      when 'dropdown' then DROPDOWN
      else
        default_value
      end
    end
  end
end
