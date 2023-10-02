# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # UpdateSegment Model.
  class UpdateSegment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The handle for the pricing scheme. Available options: per_unit, volume,
    # tiered, stairstep. See [Price Bracket
    # Rules](https://help.chargify.com/products/product-components.html#price-br
    # acket-rules) for an overview of pricing schemes.
    # @return [String]
    attr_accessor :pricing_scheme

    # The handle for the pricing scheme. Available options: per_unit, volume,
    # tiered, stairstep. See [Price Bracket
    # Rules](https://help.chargify.com/products/product-components.html#price-br
    # acket-rules) for an overview of pricing schemes.
    # @return [Array[CreateOrUpdateSegmentPrice]]
    attr_accessor :prices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['prices'] = 'prices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        prices
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pricing_scheme = nil,
                   prices = SKIP)
      @pricing_scheme = pricing_scheme
      @prices = prices unless prices == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : nil
      # Parameter is an array, so we need to iterate through it
      prices = nil
      unless hash['prices'].nil?
        prices = []
        hash['prices'].each do |structure|
          prices << (CreateOrUpdateSegmentPrice.from_hash(structure) if structure)
        end
      end

      prices = SKIP unless hash.key?('prices')

      # Create object from extracted values.
      UpdateSegment.new(pricing_scheme,
                        prices)
    end
  end
end
