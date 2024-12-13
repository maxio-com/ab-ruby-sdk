# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceLineItemComponentCostData Model.
  class InvoiceLineItemComponentCostData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[ComponentCostData]]
    attr_accessor :rates

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['rates'] = 'rates'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        rates
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(rates: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @rates = rates unless rates == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      rates = nil
      unless hash['rates'].nil?
        rates = []
        hash['rates'].each do |structure|
          rates << (ComponentCostData.from_hash(structure) if structure)
        end
      end

      rates = SKIP unless hash.key?('rates')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoiceLineItemComponentCostData.new(rates: rates,
                                           additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceLineItemComponentCostData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
