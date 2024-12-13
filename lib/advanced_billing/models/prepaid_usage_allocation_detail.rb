# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PrepaidUsageAllocationDetail Model.
  class PrepaidUsageAllocationDetail < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :allocation_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :charge_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :usage_quantity

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['allocation_id'] = 'allocation_id'
      @_hash['charge_id'] = 'charge_id'
      @_hash['usage_quantity'] = 'usage_quantity'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        allocation_id
        charge_id
        usage_quantity
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(allocation_id: SKIP, charge_id: SKIP, usage_quantity: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @allocation_id = allocation_id unless allocation_id == SKIP
      @charge_id = charge_id unless charge_id == SKIP
      @usage_quantity = usage_quantity unless usage_quantity == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      allocation_id = hash.key?('allocation_id') ? hash['allocation_id'] : SKIP
      charge_id = hash.key?('charge_id') ? hash['charge_id'] : SKIP
      usage_quantity =
        hash.key?('usage_quantity') ? hash['usage_quantity'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PrepaidUsageAllocationDetail.new(allocation_id: allocation_id,
                                       charge_id: charge_id,
                                       usage_quantity: usage_quantity,
                                       additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [PrepaidUsageAllocationDetail | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
