# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # Holder Type.
  class HolderTypeEnum
    HOLDER_TYPE_ENUM = [
      # TODO: Write general description for PERSONAL
      PERSONAL = 'personal'.freeze,

      # TODO: Write general description for BUSINESS
      BUSINESS = 'business'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      HOLDER_TYPE_ENUM.include?(value)
    end
  end
end
