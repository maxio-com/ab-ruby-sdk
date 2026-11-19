# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The recurring window over which a `usage_limit` feature's allowance resets.
  class EntitlementPeriodicityUnit
    ENTITLEMENT_PERIODICITY_UNIT = [
      # TODO: Write general description for HOUR
      HOUR = 'hour'.freeze,

      # TODO: Write general description for DAY
      DAY = 'day'.freeze,

      # TODO: Write general description for WEEK
      WEEK = 'week'.freeze,

      # TODO: Write general description for MONTH
      MONTH = 'month'.freeze,

      # TODO: Write general description for YEAR
      YEAR = 'year'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ENTITLEMENT_PERIODICITY_UNIT.include?(value)
    end

    def self.from_value(value, default_value = HOUR)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'hour' then HOUR
      when 'day' then DAY
      when 'week' then WEEK
      when 'month' then MONTH
      when 'year' then YEAR
      else
        default_value
      end
    end
  end
end
