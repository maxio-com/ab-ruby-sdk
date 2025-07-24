# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Custom Field Owner.
  class CustomFieldOwner
    CUSTOM_FIELD_OWNER = [
      # TODO: Write general description for CUSTOMER
      CUSTOMER = 'Customer'.freeze,

      # TODO: Write general description for SUBSCRIPTION
      SUBSCRIPTION = 'Subscription'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CUSTOM_FIELD_OWNER.include?(value)
    end
  end
end
