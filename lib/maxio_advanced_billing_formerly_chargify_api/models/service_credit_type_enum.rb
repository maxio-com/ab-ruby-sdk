# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # The type of entry
  class ServiceCreditTypeEnum
    SERVICE_CREDIT_TYPE_ENUM = [
      # TODO: Write general description for CREDIT
      CREDIT = 'Credit'.freeze,

      # TODO: Write general description for DEBIT
      DEBIT = 'Debit'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SERVICE_CREDIT_TYPE_ENUM.include?(value)
    end
  end
end
