# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # BulkUpdateSegmentsItem Model.
  class BulkUpdateSegmentsItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the segment you want to update.
    # @return [Integer]
    attr_accessor :id

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [Array[CreateOrUpdateSegmentPrice]]
    attr_accessor :prices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['prices'] = 'prices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id:, pricing_scheme:, prices:, additional_properties: {})
      @id = id
      @pricing_scheme = pricing_scheme
      @prices = prices

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
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

      prices = nil unless hash.key?('prices')

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      BulkUpdateSegmentsItem.new(id: id,
                                 pricing_scheme: pricing_scheme,
                                 prices: prices,
                                 additional_properties: hash)
    end
  end
end
