# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Interval Unit.
  class IntervalUnit
    INTERVAL_UNIT = [
      # TODO: Write general description for DAY
      DAY = 'day'.freeze,

      # TODO: Write general description for MONTH
      MONTH = 'month'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INTERVAL_UNIT.include?(value)
    end

    def self.from_value(value, default_value = DAY)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'day' then DAY
      when 'month' then MONTH
      else
        default_value
      end
    end
  end
end
