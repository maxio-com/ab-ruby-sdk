# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # MovementLineItem Model.
  class MovementLineItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :product_id

    # For Product (or "baseline") line items, this field will have a value of
    # `0`.
    # @return [Integer]
    attr_accessor :component_id

    # For Product (or "baseline") line items, this field will have a value of
    # `0`.
    # @return [Integer]
    attr_accessor :price_point_id

    # For Product (or "baseline") line items, this field will have a value of
    # `0`.
    # @return [String]
    attr_accessor :name

    # For Product (or "baseline") line items, this field will have a value of
    # `0`.
    # @return [Integer]
    attr_accessor :mrr

    # For Product (or "baseline") line items, this field will have a value of
    # `0`.
    # @return [Array[MRRMovement]]
    attr_accessor :mrr_movements

    # For Product (or "baseline") line items, this field will have a value of
    # `0`.
    # @return [Integer]
    attr_accessor :quantity

    # For Product (or "baseline") line items, this field will have a value of
    # `0`.
    # @return [Integer]
    attr_accessor :prev_quantity

    # When `true`, the line item's MRR value will contribute to the `plan`
    # breakout. When `false`, the line item contributes to the `usage` breakout.
    # @return [TrueClass | FalseClass]
    attr_accessor :recurring

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['product_id'] = 'product_id'
      @_hash['component_id'] = 'component_id'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['name'] = 'name'
      @_hash['mrr'] = 'mrr'
      @_hash['mrr_movements'] = 'mrr_movements'
      @_hash['quantity'] = 'quantity'
      @_hash['prev_quantity'] = 'prev_quantity'
      @_hash['recurring'] = 'recurring'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        product_id
        component_id
        price_point_id
        name
        mrr
        mrr_movements
        quantity
        prev_quantity
        recurring
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(product_id = SKIP,
                   component_id = SKIP,
                   price_point_id = SKIP,
                   name = SKIP,
                   mrr = SKIP,
                   mrr_movements = SKIP,
                   quantity = SKIP,
                   prev_quantity = SKIP,
                   recurring = SKIP,
                   additional_properties = {})
      @product_id = product_id unless product_id == SKIP
      @component_id = component_id unless component_id == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @name = name unless name == SKIP
      @mrr = mrr unless mrr == SKIP
      @mrr_movements = mrr_movements unless mrr_movements == SKIP
      @quantity = quantity unless quantity == SKIP
      @prev_quantity = prev_quantity unless prev_quantity == SKIP
      @recurring = recurring unless recurring == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      product_id = hash.key?('product_id') ? hash['product_id'] : SKIP
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      mrr = hash.key?('mrr') ? hash['mrr'] : SKIP
      # Parameter is an array, so we need to iterate through it
      mrr_movements = nil
      unless hash['mrr_movements'].nil?
        mrr_movements = []
        hash['mrr_movements'].each do |structure|
          mrr_movements << (MRRMovement.from_hash(structure) if structure)
        end
      end

      mrr_movements = SKIP unless hash.key?('mrr_movements')
      quantity = hash.key?('quantity') ? hash['quantity'] : SKIP
      prev_quantity = hash.key?('prev_quantity') ? hash['prev_quantity'] : SKIP
      recurring = hash.key?('recurring') ? hash['recurring'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      MovementLineItem.new(product_id,
                           component_id,
                           price_point_id,
                           name,
                           mrr,
                           mrr_movements,
                           quantity,
                           prev_quantity,
                           recurring,
                           hash)
    end
  end
end
