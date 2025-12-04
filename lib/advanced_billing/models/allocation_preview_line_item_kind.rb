# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # A handle for the line item kind for allocation preview
  class AllocationPreviewLineItemKind
    ALLOCATION_PREVIEW_LINE_ITEM_KIND = [
      # TODO: Write general description for QUANTITY_BASED_COMPONENT
      QUANTITY_BASED_COMPONENT = 'quantity_based_component'.freeze,

      # TODO: Write general description for ON_OFF_COMPONENT
      ON_OFF_COMPONENT = 'on_off_component'.freeze,

      # TODO: Write general description for COUPON
      COUPON = 'coupon'.freeze,

      # TODO: Write general description for TAX
      TAX = 'tax'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ALLOCATION_PREVIEW_LINE_ITEM_KIND.include?(value)
    end

    def self.from_value(value, default_value = QUANTITY_BASED_COMPONENT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'quantity_based_component' then QUANTITY_BASED_COMPONENT
      when 'on_off_component' then ON_OFF_COMPONENT
      when 'coupon' then COUPON
      when 'tax' then TAX
      else
        default_value
      end
    end
  end
end
