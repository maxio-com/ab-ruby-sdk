# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Resource Type.
  class ResourceType
    RESOURCE_TYPE = [
      # TODO: Write general description for SUBSCRIPTIONS
      SUBSCRIPTIONS = 'subscriptions'.freeze,

      # TODO: Write general description for CUSTOMERS
      CUSTOMERS = 'customers'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      RESOURCE_TYPE.include?(value)
    end

    def self.from_value(value, default_value = SUBSCRIPTIONS)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'subscriptions' then SUBSCRIPTIONS
      when 'customers' then CUSTOMERS
      else
        default_value
      end
    end
  end
end
