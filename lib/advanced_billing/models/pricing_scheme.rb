# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The identifier for the pricing scheme. See [Product
  # Components](https://help.chargify.com/products/product-components.html) for
  # an overview of pricing schemes.
  class PricingScheme
    PRICING_SCHEME = [
      # TODO: Write general description for STAIRSTEP
      STAIRSTEP = 'stairstep'.freeze,

      # TODO: Write general description for VOLUME
      VOLUME = 'volume'.freeze,

      # TODO: Write general description for PER_UNIT
      PER_UNIT = 'per_unit'.freeze,

      # TODO: Write general description for TIERED
      TIERED = 'tiered'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PRICING_SCHEME.include?(value)
    end
  end
end
