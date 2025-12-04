# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Expiration Interval Unit.
  class ExpirationIntervalUnit
    EXPIRATION_INTERVAL_UNIT = [
      # TODO: Write general description for DAY
      DAY = 'day'.freeze,

      # TODO: Write general description for MONTH
      MONTH = 'month'.freeze,

      # TODO: Write general description for NEVER
      NEVER = 'never'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      EXPIRATION_INTERVAL_UNIT.include?(value)
    end

    def self.from_value(value, default_value = DAY)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'day' then DAY
      when 'month' then MONTH
      when 'never' then NEVER
      else
        default_value
      end
    end
  end
end
