# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # kind.
  class Kind
    KIND = [
      # TODO: Write general description for ACCESS_RIGHT
      ACCESS_RIGHT = 'access_right'.freeze,

      # TODO: Write general description for USAGE_LIMIT
      USAGE_LIMIT = 'usage_limit'.freeze,

      # TODO: Write general description for SERVICE_RIGHT
      SERVICE_RIGHT = 'service_right'.freeze,

      # TODO: Write general description for ALL
      ALL = 'all'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      KIND.include?(value)
    end

    def self.from_value(value, default_value = ACCESS_RIGHT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'access_right' then ACCESS_RIGHT
      when 'usage_limit' then USAGE_LIMIT
      when 'service_right' then SERVICE_RIGHT
      when 'all' then ALL
      else
        default_value
      end
    end
  end
end
