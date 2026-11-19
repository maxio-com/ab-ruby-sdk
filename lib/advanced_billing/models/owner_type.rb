# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The polymorphic owner type. `subscription` is the only value currently
  # supported.
  class OwnerType
    OWNER_TYPE = [
      # TODO: Write general description for SUBSCRIPTION
      SUBSCRIPTION = 'subscription'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      OWNER_TYPE.include?(value)
    end

    def self.from_value(value, default_value = SUBSCRIPTION)
      return default_value if value.nil?

      default_value
    end
  end
end
