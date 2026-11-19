# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # sort_by1.
  class SortBy1
    SORT_BY1 = [
      # TODO: Write general description for NAME
      NAME = 'name'.freeze,

      # TODO: Write general description for UNIT_NAME
      UNIT_NAME = 'unit_name'.freeze,

      # TODO: Write general description for UPDATED_AT
      UPDATED_AT = 'updated_at'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SORT_BY1.include?(value)
    end

    def self.from_value(value, default_value = NAME)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'name' then NAME
      when 'unit_name' then UNIT_NAME
      when 'updated_at' then UPDATED_AT
      else
        default_value
      end
    end
  end
end
