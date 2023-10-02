# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # First Charge Type.
  class FirstChargeTypeEnum
    FIRST_CHARGE_TYPE_ENUM = [
      # TODO: Write general description for PRORATED
      PRORATED = 'prorated'.freeze,

      # TODO: Write general description for IMMEDIATE
      IMMEDIATE = 'immediate'.freeze,

      # TODO: Write general description for DELAYED
      DELAYED = 'delayed'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      FIRST_CHARGE_TYPE_ENUM.include?(value)
    end
  end
end
