# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # First Charge Type.
  class FirstChargeType
    FIRST_CHARGE_TYPE = [
      # TODO: Write general description for PRORATED
      PRORATED = 'prorated'.freeze,

      # TODO: Write general description for IMMEDIATE
      IMMEDIATE = 'immediate'.freeze,

      # TODO: Write general description for DELAYED
      DELAYED = 'delayed'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      FIRST_CHARGE_TYPE.include?(value)
    end

    def self.from_value(value, default_value = PRORATED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'prorated' then PRORATED
      when 'immediate' then IMMEDIATE
      when 'delayed' then DELAYED
      else
        default_value
      end
    end
  end
end
