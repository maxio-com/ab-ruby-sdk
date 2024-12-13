# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ComponentAllocationChange Model.
  class ComponentAllocationChange < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :previous_allocation

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :new_allocation

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :component_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :component_handle

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :allocation_id

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :allocated_quantity

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['previous_allocation'] = 'previous_allocation'
      @_hash['new_allocation'] = 'new_allocation'
      @_hash['component_id'] = 'component_id'
      @_hash['component_handle'] = 'component_handle'
      @_hash['memo'] = 'memo'
      @_hash['allocation_id'] = 'allocation_id'
      @_hash['allocated_quantity'] = 'allocated_quantity'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        allocated_quantity
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(previous_allocation:, new_allocation:, component_id:,
                   component_handle:, memo:, allocation_id:,
                   allocated_quantity: SKIP, additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @previous_allocation = previous_allocation
      @new_allocation = new_allocation
      @component_id = component_id
      @component_handle = component_handle
      @memo = memo
      @allocation_id = allocation_id
      @allocated_quantity = allocated_quantity unless allocated_quantity == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      previous_allocation =
        hash.key?('previous_allocation') ? hash['previous_allocation'] : nil
      new_allocation =
        hash.key?('new_allocation') ? hash['new_allocation'] : nil
      component_id = hash.key?('component_id') ? hash['component_id'] : nil
      component_handle =
        hash.key?('component_handle') ? hash['component_handle'] : nil
      memo = hash.key?('memo') ? hash['memo'] : nil
      allocation_id = hash.key?('allocation_id') ? hash['allocation_id'] : nil
      allocated_quantity = hash.key?('allocated_quantity') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:ComponentAllocationChangeAllocatedQuantity), hash['allocated_quantity']
      ) : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ComponentAllocationChange.new(previous_allocation: previous_allocation,
                                    new_allocation: new_allocation,
                                    component_id: component_id,
                                    component_handle: component_handle,
                                    memo: memo,
                                    allocation_id: allocation_id,
                                    allocated_quantity: allocated_quantity,
                                    additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [ComponentAllocationChange | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.previous_allocation,
                                ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.new_allocation,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.component_id,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.component_handle,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.memo,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.allocation_id,
                                  ->(val) { val.instance_of? Integer })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['previous_allocation'],
                              ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['new_allocation'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['component_id'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['component_handle'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['memo'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['allocation_id'],
                                ->(val) { val.instance_of? Integer })
      )
    end
  end
end
