# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The type of entry
  class ServiceCreditType
    SERVICE_CREDIT_TYPE = [
      # TODO: Write general description for CREDIT
      CREDIT = 'Credit'.freeze,

      # TODO: Write general description for DEBIT
      DEBIT = 'Debit'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SERVICE_CREDIT_TYPE.include?(value)
    end

    def self.from_value(value, default_value = CREDIT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'credit' then CREDIT
      when 'debit' then DEBIT
      else
        default_value
      end
    end
  end
end
