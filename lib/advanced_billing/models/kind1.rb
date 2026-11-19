# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Determines the direction of the movement. The amount itself is always sent
  # positive.
  class Kind1
    KIND1 = [
      # TODO: Write general description for GRANT
      GRANT = 'grant'.freeze,

      # TODO: Write general description for DEBIT
      DEBIT = 'debit'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      KIND1.include?(value)
    end

    def self.from_value(value, default_value = GRANT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'grant' then GRANT
      when 'debit' then DEBIT
      else
        default_value
      end
    end
  end
end
