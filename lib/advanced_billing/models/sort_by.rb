# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # sort_by.
  class SortBy
    SORT_BY = [
      # TODO: Write general description for NAME
      NAME = 'name'.freeze,

      # TODO: Write general description for UPDATED_AT
      UPDATED_AT = 'updated_at'.freeze,

      # TODO: Write general description for KIND
      KIND = 'kind'.freeze,

      # TODO: Write general description for VALUE_TYPE
      VALUE_TYPE = 'value_type'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SORT_BY.include?(value)
    end

    def self.from_value(value, default_value = NAME)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'name' then NAME
      when 'updated_at' then UPDATED_AT
      when 'kind' then KIND
      when 'value_type' then VALUE_TYPE
      else
        default_value
      end
    end
  end
end
