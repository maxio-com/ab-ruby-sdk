# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # UpdatePrice Model.
  class UpdatePrice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :ending_quantity

    # The price can contain up to 8 decimal places. i.e. 1.00 or 0.0012 or
    # 0.00000065
    # @return [Object]
    attr_accessor :unit_price

    # The price can contain up to 8 decimal places. i.e. 1.00 or 0.0012 or
    # 0.00000065
    # @return [TrueClass | FalseClass]
    attr_accessor :destroy

    # The price can contain up to 8 decimal places. i.e. 1.00 or 0.0012 or
    # 0.00000065
    # @return [Object]
    attr_accessor :starting_quantity

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['ending_quantity'] = 'ending_quantity'
      @_hash['unit_price'] = 'unit_price'
      @_hash['destroy'] = '_destroy'
      @_hash['starting_quantity'] = 'starting_quantity'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        ending_quantity
        unit_price
        destroy
        starting_quantity
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, ending_quantity: SKIP, unit_price: SKIP,
                   destroy: SKIP, starting_quantity: SKIP,
                   additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @ending_quantity = ending_quantity unless ending_quantity == SKIP
      @unit_price = unit_price unless unit_price == SKIP
      @destroy = destroy unless destroy == SKIP
      @starting_quantity = starting_quantity unless starting_quantity == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      ending_quantity = hash.key?('ending_quantity') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:UpdatePriceEndingQuantity), hash['ending_quantity']
      ) : SKIP
      unit_price = hash.key?('unit_price') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:UpdatePriceUnitPrice), hash['unit_price']
      ) : SKIP
      destroy = hash.key?('_destroy') ? hash['_destroy'] : SKIP
      starting_quantity = hash.key?('starting_quantity') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:UpdatePriceStartingQuantity), hash['starting_quantity']
      ) : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdatePrice.new(id: id,
                      ending_quantity: ending_quantity,
                      unit_price: unit_price,
                      destroy: destroy,
                      starting_quantity: starting_quantity,
                      additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [UpdatePrice | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
