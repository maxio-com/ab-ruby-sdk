# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Use in place of passing product and component information to set up the
  # subscription with an existing offer. May be either the Chargify id of the
  # offer or its handle prefixed with `handle:`.er
  class OfferId < BaseModel
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
      OfferId.new()
    end

    # Validates an instance of the object from a given value.
    # @param [OfferId | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
