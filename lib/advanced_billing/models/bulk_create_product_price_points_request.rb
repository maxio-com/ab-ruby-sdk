# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # BulkCreateProductPricePointsRequest Model.
  class BulkCreateProductPricePointsRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[CreateProductPricePoint]]
    attr_accessor :price_points

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['price_points'] = 'price_points'
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

    def initialize(price_points:, additional_properties: {})
      @price_points = price_points

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      price_points = nil
      unless hash['price_points'].nil?
        price_points = []
        hash['price_points'].each do |structure|
          price_points << (CreateProductPricePoint.from_hash(structure) if structure)
        end
      end

      price_points = nil unless hash.key?('price_points')

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      BulkCreateProductPricePointsRequest.new(price_points: price_points,
                                              additional_properties: hash)
    end
  end
end
