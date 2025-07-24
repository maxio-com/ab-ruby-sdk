# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ListProductPricePointsResponse Model.
  class ListProductPricePointsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[ProductPricePoint]]
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
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @price_points = price_points
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
          price_points << (ProductPricePoint.from_hash(structure) if structure)
        end
      end

      price_points = nil unless hash.key?('price_points')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ListProductPricePointsResponse.new(price_points: price_points,
                                         additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} price_points: #{@price_points}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} price_points: #{@price_points.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
