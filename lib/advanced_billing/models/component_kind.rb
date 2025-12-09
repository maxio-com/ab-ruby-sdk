# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # A handle for the component type
  class ComponentKind
    COMPONENT_KIND = [
      # TODO: Write general description for METERED_COMPONENT
      METERED_COMPONENT = 'metered_component'.freeze,

      # TODO: Write general description for QUANTITY_BASED_COMPONENT
      QUANTITY_BASED_COMPONENT = 'quantity_based_component'.freeze,

      # TODO: Write general description for ON_OFF_COMPONENT
      ON_OFF_COMPONENT = 'on_off_component'.freeze,

      # TODO: Write general description for PREPAID_USAGE_COMPONENT
      PREPAID_USAGE_COMPONENT = 'prepaid_usage_component'.freeze,

      # TODO: Write general description for EVENT_BASED_COMPONENT
      EVENT_BASED_COMPONENT = 'event_based_component'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      COMPONENT_KIND.include?(value)
    end

    def self.from_value(value, default_value = METERED_COMPONENT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'metered_component' then METERED_COMPONENT
      when 'quantity_based_component' then QUANTITY_BASED_COMPONENT
      when 'on_off_component' then ON_OFF_COMPONENT
      when 'prepaid_usage_component' then PREPAID_USAGE_COMPONENT
      when 'event_based_component' then EVENT_BASED_COMPONENT
      else
        default_value
      end
    end
  end
end
