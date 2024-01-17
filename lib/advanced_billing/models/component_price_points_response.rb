# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ComponentPricePointsResponse Model.
  class ComponentPricePointsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[ComponentPricePoint]]
    attr_accessor :price_points

    # TODO: Write general description for this method
    # @return [ListPublicKeysMeta]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['price_points'] = 'price_points'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        price_points
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(price_points = SKIP,
                   meta = SKIP)
      @price_points = price_points unless price_points == SKIP
      @meta = meta unless meta == SKIP
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
          price_points << (ComponentPricePoint.from_hash(structure) if structure)
        end
      end

      price_points = SKIP unless hash.key?('price_points')
      meta = ListPublicKeysMeta.from_hash(hash['meta']) if hash['meta']

      # Create object from extracted values.
      ComponentPricePointsResponse.new(price_points,
                                       meta)
    end
  end
end
