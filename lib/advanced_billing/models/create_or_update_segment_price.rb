# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateOrUpdateSegmentPrice Model.
  class CreateOrUpdateSegmentPrice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :starting_quantity

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :ending_quantity

    # The price can contain up to 8 decimal places. i.e. 1.00 or 0.0012 or
    # 0.00000065
    # @return [Object]
    attr_accessor :unit_price

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['starting_quantity'] = 'starting_quantity'
      @_hash['ending_quantity'] = 'ending_quantity'
      @_hash['unit_price'] = 'unit_price'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        starting_quantity
        ending_quantity
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(unit_price:, starting_quantity: SKIP, ending_quantity: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @starting_quantity = starting_quantity unless starting_quantity == SKIP
      @ending_quantity = ending_quantity unless ending_quantity == SKIP
      @unit_price = unit_price
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      unit_price = hash.key?('unit_price') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateOrUpdateSegmentPriceUnitPrice), hash['unit_price']
      ) : nil
      starting_quantity =
        hash.key?('starting_quantity') ? hash['starting_quantity'] : SKIP
      ending_quantity =
        hash.key?('ending_quantity') ? hash['ending_quantity'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateOrUpdateSegmentPrice.new(unit_price: unit_price,
                                     starting_quantity: starting_quantity,
                                     ending_quantity: ending_quantity,
                                     additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateOrUpdateSegmentPrice | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return UnionTypeLookUp.get(:CreateOrUpdateSegmentPriceUnitPrice)
                              .validate(value.unit_price)
      end

      return false unless value.instance_of? Hash

      UnionTypeLookUp.get(:CreateOrUpdateSegmentPriceUnitPrice)
                     .validate(value['unit_price'])
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} starting_quantity: #{@starting_quantity}, ending_quantity:"\
      " #{@ending_quantity}, unit_price: #{@unit_price}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} starting_quantity: #{@starting_quantity.inspect}, ending_quantity:"\
      " #{@ending_quantity.inspect}, unit_price: #{@unit_price.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
