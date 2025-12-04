# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Used for sorting results.
  class SortingDirection
    SORTING_DIRECTION = [
      # TODO: Write general description for ASC
      ASC = 'asc'.freeze,

      # TODO: Write general description for DESC
      DESC = 'desc'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SORTING_DIRECTION.include?(value)
    end

    def self.from_value(value, default_value = ASC)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'asc' then ASC
      when 'desc' then DESC
      else
        default_value
      end
    end
  end
end
