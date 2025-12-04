# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Allows to filter by `not_null` or `null`.
  class IncludeNullOrNotNull
    INCLUDE_NULL_OR_NOT_NULL = [
      # TODO: Write general description for NOT_NULL
      NOT_NULL = 'not_null'.freeze,

      # TODO: Write general description for NULL
      NULL = 'null'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INCLUDE_NULL_OR_NOT_NULL.include?(value)
    end

    def self.from_value(value, default_value = NOT_NULL)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'not_null' then NOT_NULL
      when 'null' then NULL
      else
        default_value
      end
    end
  end
end
