# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ComponentCostDataRateTier Model.
  class ComponentCostDataRateTier < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :starting_quantity

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :ending_quantity

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :quantity

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :unit_price

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['starting_quantity'] = 'starting_quantity'
      @_hash['ending_quantity'] = 'ending_quantity'
      @_hash['quantity'] = 'quantity'
      @_hash['unit_price'] = 'unit_price'
      @_hash['amount'] = 'amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        starting_quantity
        ending_quantity
        quantity
        unit_price
        amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        ending_quantity
      ]
    end

    def initialize(starting_quantity: SKIP, ending_quantity: SKIP,
                   quantity: SKIP, unit_price: SKIP, amount: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @starting_quantity = starting_quantity unless starting_quantity == SKIP
      @ending_quantity = ending_quantity unless ending_quantity == SKIP
      @quantity = quantity unless quantity == SKIP
      @unit_price = unit_price unless unit_price == SKIP
      @amount = amount unless amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      starting_quantity =
        hash.key?('starting_quantity') ? hash['starting_quantity'] : SKIP
      ending_quantity =
        hash.key?('ending_quantity') ? hash['ending_quantity'] : SKIP
      quantity = hash.key?('quantity') ? hash['quantity'] : SKIP
      unit_price = hash.key?('unit_price') ? hash['unit_price'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ComponentCostDataRateTier.new(starting_quantity: starting_quantity,
                                    ending_quantity: ending_quantity,
                                    quantity: quantity,
                                    unit_price: unit_price,
                                    amount: amount,
                                    additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [ComponentCostDataRateTier | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} starting_quantity: #{@starting_quantity}, ending_quantity:"\
      " #{@ending_quantity}, quantity: #{@quantity}, unit_price: #{@unit_price}, amount:"\
      " #{@amount}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} starting_quantity: #{@starting_quantity.inspect}, ending_quantity:"\
      " #{@ending_quantity.inspect}, quantity: #{@quantity.inspect}, unit_price:"\
      " #{@unit_price.inspect}, amount: #{@amount.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
