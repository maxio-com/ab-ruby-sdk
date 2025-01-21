# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SegmentPrice Model.
  class SegmentPrice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :component_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :starting_quantity

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :ending_quantity

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :unit_price

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_point_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :formatted_unit_price

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :segment_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['component_id'] = 'component_id'
      @_hash['starting_quantity'] = 'starting_quantity'
      @_hash['ending_quantity'] = 'ending_quantity'
      @_hash['unit_price'] = 'unit_price'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['formatted_unit_price'] = 'formatted_unit_price'
      @_hash['segment_id'] = 'segment_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        component_id
        starting_quantity
        ending_quantity
        unit_price
        price_point_id
        formatted_unit_price
        segment_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        ending_quantity
      ]
    end

    def initialize(id: SKIP, component_id: SKIP, starting_quantity: SKIP,
                   ending_quantity: SKIP, unit_price: SKIP,
                   price_point_id: SKIP, formatted_unit_price: SKIP,
                   segment_id: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @component_id = component_id unless component_id == SKIP
      @starting_quantity = starting_quantity unless starting_quantity == SKIP
      @ending_quantity = ending_quantity unless ending_quantity == SKIP
      @unit_price = unit_price unless unit_price == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @formatted_unit_price = formatted_unit_price unless formatted_unit_price == SKIP
      @segment_id = segment_id unless segment_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      starting_quantity =
        hash.key?('starting_quantity') ? hash['starting_quantity'] : SKIP
      ending_quantity =
        hash.key?('ending_quantity') ? hash['ending_quantity'] : SKIP
      unit_price = hash.key?('unit_price') ? hash['unit_price'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      formatted_unit_price =
        hash.key?('formatted_unit_price') ? hash['formatted_unit_price'] : SKIP
      segment_id = hash.key?('segment_id') ? hash['segment_id'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SegmentPrice.new(id: id,
                       component_id: component_id,
                       starting_quantity: starting_quantity,
                       ending_quantity: ending_quantity,
                       unit_price: unit_price,
                       price_point_id: price_point_id,
                       formatted_unit_price: formatted_unit_price,
                       segment_id: segment_id,
                       additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [SegmentPrice | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, component_id: #{@component_id}, starting_quantity:"\
      " #{@starting_quantity}, ending_quantity: #{@ending_quantity}, unit_price: #{@unit_price},"\
      " price_point_id: #{@price_point_id}, formatted_unit_price: #{@formatted_unit_price},"\
      " segment_id: #{@segment_id}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, component_id: #{@component_id.inspect},"\
      " starting_quantity: #{@starting_quantity.inspect}, ending_quantity:"\
      " #{@ending_quantity.inspect}, unit_price: #{@unit_price.inspect}, price_point_id:"\
      " #{@price_point_id.inspect}, formatted_unit_price: #{@formatted_unit_price.inspect},"\
      " segment_id: #{@segment_id.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
