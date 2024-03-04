# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateComponentPricePointsRequest Model.
  class CreateComponentPricePointsRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[PricePoint]]
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

    def initialize(price_points = nil,
                   additional_properties = {})
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
      price_points = hash.key?('price_points') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateComponentPricePointsRequestPricePoints), hash['price_points']
      ) : nil

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      CreateComponentPricePointsRequest.new(price_points,
                                            hash)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateComponentPricePointsRequest | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return UnionTypeLookUp.get(:CreateComponentPricePointsRequestPricePoints)
                              .validate(value.price_points)
      end

      return false unless value.instance_of? Hash

      UnionTypeLookUp.get(:CreateComponentPricePointsRequestPricePoints)
                     .validate(value['price_points'])
    end
  end
end
