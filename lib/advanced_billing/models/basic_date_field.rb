# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Allows to filter by `created_at` or `updated_at`.
  class BasicDateField
    BASIC_DATE_FIELD = [
      # TODO: Write general description for UPDATED_AT
      UPDATED_AT = 'updated_at'.freeze,

      # TODO: Write general description for CREATED_AT
      CREATED_AT = 'created_at'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BASIC_DATE_FIELD.include?(value)
    end

    def self.from_value(value, default_value = UPDATED_AT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'updated_at' then UPDATED_AT
      when 'created_at' then CREATED_AT
      else
        default_value
      end
    end
  end
end
