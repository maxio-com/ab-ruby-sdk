# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Price point type. We expose the following types: 1. **default**: a price
  # point that is marked as a default price for a certain product. 2.
  # **custom**: a custom price point. 3. **catalog**: a price point that is
  # **not** marked as a default price for a certain product and is **not** a
  # custom one.
  class PricePointType
    PRICE_POINT_TYPE = [
      # TODO: Write general description for CATALOG
      CATALOG = 'catalog'.freeze,

      # TODO: Write general description for DEFAULT
      DEFAULT = 'default'.freeze,

      # TODO: Write general description for CUSTOM
      CUSTOM = 'custom'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PRICE_POINT_TYPE.include?(value)
    end

    def self.from_value(value, default_value = CATALOG)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'catalog' then CATALOG
      when 'default' then DEFAULT
      when 'custom' then CUSTOM
      else
        default_value
      end
    end
  end
end
