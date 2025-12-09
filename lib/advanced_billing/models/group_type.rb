# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Group Type.
  class GroupType
    GROUP_TYPE = [
      # TODO: Write general description for SINGLE_CUSTOMER
      SINGLE_CUSTOMER = 'single_customer'.freeze,

      # TODO: Write general description for MULTIPLE_CUSTOMERS
      MULTIPLE_CUSTOMERS = 'multiple_customers'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      GROUP_TYPE.include?(value)
    end

    def self.from_value(value, default_value = SINGLE_CUSTOMER)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'single_customer' then SINGLE_CUSTOMER
      when 'multiple_customers' then MULTIPLE_CUSTOMERS
      else
        default_value
      end
    end
  end
end
