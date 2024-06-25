# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ComponentPricePointAssignment Model.
  class ComponentPricePointAssignment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :component_id

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :price_point

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['component_id'] = 'component_id'
      @_hash['price_point'] = 'price_point'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        component_id
        price_point
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(component_id: SKIP, price_point: SKIP,
                   additional_properties: {})
      @component_id = component_id unless component_id == SKIP
      @price_point = price_point unless price_point == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      price_point = hash.key?('price_point') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:ComponentPricePointAssignmentPricePoint), hash['price_point']
      ) : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ComponentPricePointAssignment.new(component_id: component_id,
                                        price_point: price_point,
                                        additional_properties: hash)
    end

    # Validates an instance of the object from a given value.
    # @param [ComponentPricePointAssignment | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
