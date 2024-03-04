# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # BaseRefundError Model.
  class BaseRefundError < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[Object]]
    attr_accessor :base

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['base'] = 'base'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        base
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(base = SKIP,
                   additional_properties = {})
      @base = base unless base == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      base = hash.key?('base') ? hash['base'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      BaseRefundError.new(base,
                          hash)
    end
  end
end
