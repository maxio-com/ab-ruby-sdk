# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Credit Scheme.
  class CreditScheme
    CREDIT_SCHEME = [
      # TODO: Write general description for NONE
      NONE = 'none'.freeze,

      # TODO: Write general description for CREDIT
      CREDIT = 'credit'.freeze,

      # TODO: Write general description for REFUND
      REFUND = 'refund'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CREDIT_SCHEME.include?(value)
    end

    def self.from_value(value, default_value = NONE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'none' then NONE
      when 'credit' then CREDIT
      when 'refund' then REFUND
      else
        default_value
      end
    end
  end
end
