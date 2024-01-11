# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

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
  end
end