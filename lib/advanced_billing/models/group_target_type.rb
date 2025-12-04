# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The type of object indicated by the id attribute.
  class GroupTargetType
    GROUP_TARGET_TYPE = [
      # TODO: Write general description for CUSTOMER
      CUSTOMER = 'customer'.freeze,

      # TODO: Write general description for SUBSCRIPTION
      SUBSCRIPTION = 'subscription'.freeze,

      # TODO: Write general description for ENUM_SELF
      ENUM_SELF = 'self'.freeze,

      # TODO: Write general description for PARENT
      PARENT = 'parent'.freeze,

      # TODO: Write general description for ELDEST
      ELDEST = 'eldest'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      GROUP_TARGET_TYPE.include?(value)
    end

    def self.from_value(value, default_value = CUSTOMER)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'customer' then CUSTOMER
      when 'subscription' then SUBSCRIPTION
      when 'enum_self' then ENUM_SELF
      when 'parent' then PARENT
      when 'eldest' then ELDEST
      else
        default_value
      end
    end
  end
end
