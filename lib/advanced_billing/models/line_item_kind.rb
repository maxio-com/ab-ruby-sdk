# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # A handle for the line item kind
  class LineItemKind
    LINE_ITEM_KIND = [
      # TODO: Write general description for BASELINE
      BASELINE = 'baseline'.freeze,

      # TODO: Write general description for INITIAL
      INITIAL = 'initial'.freeze,

      # TODO: Write general description for TRIAL
      TRIAL = 'trial'.freeze,

      # TODO: Write general description for QUANTITY_BASED_COMPONENT
      QUANTITY_BASED_COMPONENT = 'quantity_based_component'.freeze,

      # TODO: Write general description for PREPAID_USAGE_COMPONENT
      PREPAID_USAGE_COMPONENT = 'prepaid_usage_component'.freeze,

      # TODO: Write general description for ON_OFF_COMPONENT
      ON_OFF_COMPONENT = 'on_off_component'.freeze,

      # TODO: Write general description for METERED_COMPONENT
      METERED_COMPONENT = 'metered_component'.freeze,

      # TODO: Write general description for EVENT_BASED_COMPONENT
      EVENT_BASED_COMPONENT = 'event_based_component'.freeze,

      # TODO: Write general description for COUPON
      COUPON = 'coupon'.freeze,

      # TODO: Write general description for TAX
      TAX = 'tax'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      LINE_ITEM_KIND.include?(value)
    end
  end
end
