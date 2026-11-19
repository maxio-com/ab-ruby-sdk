# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The behavior of a feature: - `access_right`: a boolean entitlement. A
  # subscriber either has access or does not. - `usage_limit`: a quantified
  # allowance measured over a recurring period (for example, "10,000 API calls
  # per month"). - `service_right`: a free-form value (text, boolean, or number)
  # that isn't a simple access flag or a metered limit.
  class FeatureKind
    FEATURE_KIND = [
      # TODO: Write general description for ACCESS_RIGHT
      ACCESS_RIGHT = 'access_right'.freeze,

      # TODO: Write general description for USAGE_LIMIT
      USAGE_LIMIT = 'usage_limit'.freeze,

      # TODO: Write general description for SERVICE_RIGHT
      SERVICE_RIGHT = 'service_right'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      FEATURE_KIND.include?(value)
    end

    def self.from_value(value, default_value = ACCESS_RIGHT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'access_right' then ACCESS_RIGHT
      when 'usage_limit' then USAGE_LIMIT
      when 'service_right' then SERVICE_RIGHT
      else
        default_value
      end
    end
  end
end
