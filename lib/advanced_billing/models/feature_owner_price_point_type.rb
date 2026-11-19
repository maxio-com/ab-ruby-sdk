# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Identifies which kind of price point a feature catalog item override applies
  # to: `ProductPricePoint` for a product price point, `PricePoint` for a
  # component price point. Only relevant when `price_point_id` is set.
  class FeatureOwnerPricePointType
    FEATURE_OWNER_PRICE_POINT_TYPE = [
      # TODO: Write general description for PRODUCTPRICEPOINT
      PRODUCTPRICEPOINT = 'ProductPricePoint'.freeze,

      # TODO: Write general description for PRICEPOINT
      PRICEPOINT = 'PricePoint'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      FEATURE_OWNER_PRICE_POINT_TYPE.include?(value)
    end

    def self.from_value(value, default_value = PRODUCTPRICEPOINT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'productpricepoint' then PRODUCTPRICEPOINT
      when 'pricepoint' then PRICEPOINT
      else
        default_value
      end
    end
  end
end
