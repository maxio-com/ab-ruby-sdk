# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Allocation Preview Direction.
  class AllocationPreviewDirection
    ALLOCATION_PREVIEW_DIRECTION = [
      # TODO: Write general description for UPGRADE
      UPGRADE = 'upgrade'.freeze,

      # TODO: Write general description for DOWNGRADE
      DOWNGRADE = 'downgrade'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ALLOCATION_PREVIEW_DIRECTION.include?(value)
    end
  end
end