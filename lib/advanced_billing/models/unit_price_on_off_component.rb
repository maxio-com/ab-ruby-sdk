# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # The amount the customer will be charged per unit when the pricing scheme is
  # “per_unit”. For On/Off Components, this is the amount that the customer will
  # be charged when they turn the component on for the subscription. The price
  # can contain up to 8 decimal places. i.e. 1.00 or 0.0012 or 0.00000065
  class UnitPriceOnOffComponent < BaseModel
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
      UnitPriceOnOffComponent.new()
    end

    # Validates an instance of the object from a given value.
    # @param [UnitPriceOnOffComponent | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
