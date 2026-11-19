# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The data type of a feature's value. For `access_right` features this is
  # always `boolean`, and for `usage_limit` features this is always `numeric`.
  # For `service_right` features, you choose the value type explicitly.
  class FeatureValueType
    FEATURE_VALUE_TYPE = [
      # TODO: Write general description for TEXT
      TEXT = 'text'.freeze,

      # TODO: Write general description for BOOLEAN
      BOOLEAN = 'boolean'.freeze,

      # TODO: Write general description for NUMERIC
      NUMERIC = 'numeric'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      FEATURE_VALUE_TYPE.include?(value)
    end

    def self.from_value(value, default_value = TEXT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'text' then TEXT
      when 'boolean' then BOOLEAN
      when 'numeric' then NUMERIC
      else
        default_value
      end
    end
  end
end
