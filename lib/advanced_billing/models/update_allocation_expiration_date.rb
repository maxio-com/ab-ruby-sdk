# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # UpdateAllocationExpirationDate Model.
  class UpdateAllocationExpirationDate < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [AllocationExpirationDate]
    attr_accessor :allocation

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['allocation'] = 'allocation'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        allocation
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(allocation: SKIP, additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @allocation = allocation unless allocation == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      allocation = AllocationExpirationDate.from_hash(hash['allocation']) if hash['allocation']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdateAllocationExpirationDate.new(allocation: allocation,
                                         additional_properties: additional_properties)
    end
  end
end
