# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # How long a wallet grant funded by a `usage_limit` feature stays spendable.
  # `day` and `month` need a `grant_expiration_interval`; `until_next_refill`
  # takes none and expires the grant when the next refill lands. Omit both
  # fields for a grant that never expires.
  class GrantExpirationUnit
    GRANT_EXPIRATION_UNIT = [
      # TODO: Write general description for DAY
      DAY = 'day'.freeze,

      # TODO: Write general description for MONTH
      MONTH = 'month'.freeze,

      # TODO: Write general description for UNTIL_NEXT_REFILL
      UNTIL_NEXT_REFILL = 'until_next_refill'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      GRANT_EXPIRATION_UNIT.include?(value)
    end

    def self.from_value(value, default_value = DAY)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'day' then DAY
      when 'month' then MONTH
      when 'until_next_refill' then UNTIL_NEXT_REFILL
      else
        default_value
      end
    end
  end
end
