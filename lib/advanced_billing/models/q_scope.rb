# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # q_scope.
  class QScope
    Q_SCOPE = [
      # TODO: Write general description for FULL_NAME
      FULL_NAME = 'full_name'.freeze,

      # TODO: Write general description for FIRST_NAME
      FIRST_NAME = 'first_name'.freeze,

      # TODO: Write general description for LAST_NAME
      LAST_NAME = 'last_name'.freeze,

      # TODO: Write general description for ORGANIZATION
      ORGANIZATION = 'organization'.freeze,

      # TODO: Write general description for CUSTOMER_REFERENCE
      CUSTOMER_REFERENCE = 'customer_reference'.freeze,

      # TODO: Write general description for SUBSCRIPTION_REFERENCE
      SUBSCRIPTION_REFERENCE = 'subscription_reference'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      Q_SCOPE.include?(value)
    end

    def self.from_value(value, default_value = FULL_NAME)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'full_name' then FULL_NAME
      when 'first_name' then FIRST_NAME
      when 'last_name' then LAST_NAME
      when 'organization' then ORGANIZATION
      when 'customer_reference' then CUSTOMER_REFERENCE
      when 'subscription_reference' then SUBSCRIPTION_REFERENCE
      else
        default_value
      end
    end
  end
end
