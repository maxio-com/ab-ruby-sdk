# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # RenewalPreviewComponent Model.
  class RenewalPreviewComponent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Either the component's Chargify id or its handle prefixed with `handle:`
    # @return [Object]
    attr_accessor :component_id

    # The quantity for which you wish to preview billing. This is useful if you
    # want to preview a predicted, higher usage value than is currently present
    # on the subscription.
    # This quantity represents:
    # - Whether or not an on/off component is enabled - use 0 for disabled or 1
    # for enabled
    # - The desired allocated_quantity for a quantity-based component
    # - The desired unit_balance for a metered component
    # - The desired metric quantity for an events-based component
    # @return [Integer]
    attr_accessor :quantity

    # Either the component price point's Chargify id or its handle prefixed with
    # `handle:`
    # @return [Object]
    attr_accessor :price_point_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['component_id'] = 'component_id'
      @_hash['quantity'] = 'quantity'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        component_id
        quantity
        price_point_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(component_id: SKIP, quantity: SKIP, price_point_id: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @component_id = component_id unless component_id == SKIP
      @quantity = quantity unless quantity == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      component_id = hash.key?('component_id') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:RenewalPreviewComponentComponentId), hash['component_id']
      ) : SKIP
      quantity = hash.key?('quantity') ? hash['quantity'] : SKIP
      price_point_id = hash.key?('price_point_id') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:RenewalPreviewComponentPricePointId), hash['price_point_id']
      ) : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      RenewalPreviewComponent.new(component_id: component_id,
                                  quantity: quantity,
                                  price_point_id: price_point_id,
                                  additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [RenewalPreviewComponent | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
