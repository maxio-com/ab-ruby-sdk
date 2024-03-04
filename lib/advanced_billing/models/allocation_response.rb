# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # AllocationResponse Model.
  class AllocationResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Allocation]
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

    def initialize(allocation = SKIP,
                   additional_properties = {})
      @allocation = allocation unless allocation == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      allocation = Allocation.from_hash(hash['allocation']) if hash['allocation']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      AllocationResponse.new(allocation,
                             hash)
    end
  end
end
