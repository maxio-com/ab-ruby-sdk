# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateOfferComponent Model.
  class CreateOfferComponent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :component_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_point_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :starting_quantity

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['component_id'] = 'component_id'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['starting_quantity'] = 'starting_quantity'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        component_id
        price_point_id
        starting_quantity
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(component_id: SKIP, price_point_id: SKIP,
                   starting_quantity: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @component_id = component_id unless component_id == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @starting_quantity = starting_quantity unless starting_quantity == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      starting_quantity =
        hash.key?('starting_quantity') ? hash['starting_quantity'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateOfferComponent.new(component_id: component_id,
                               price_point_id: price_point_id,
                               starting_quantity: starting_quantity,
                               additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} component_id: #{@component_id}, price_point_id: #{@price_point_id},"\
      " starting_quantity: #{@starting_quantity}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} component_id: #{@component_id.inspect}, price_point_id:"\
      " #{@price_point_id.inspect}, starting_quantity: #{@starting_quantity.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
