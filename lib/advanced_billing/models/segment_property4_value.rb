# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # A value that will occur in your events that you want to bill upon. The type
  # of the value depends on the property type in the related event based billing
  # metric.
  class SegmentProperty4Value < BaseModel
    SKIP = Object.new
    private_constant :SKIP



    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?

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

    def initialize()

    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.


      # Create object from extracted values.
      SegmentProperty4Value.new()
    end

    # Validates an instance of the object from a given value.
    # @param [SegmentProperty4Value | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
