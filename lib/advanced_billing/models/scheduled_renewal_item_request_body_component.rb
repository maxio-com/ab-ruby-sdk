# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ScheduledRenewalItemRequestBodyComponent Model.
  class ScheduledRenewalItemRequestBodyComponent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Item type to add. Either Product or Component.
    # @return [String]
    attr_reader :item_type

    # Product or component identifier.
    # @return [Integer]
    attr_accessor :item_id

    # Price point identifier.
    # @return [Integer]
    attr_accessor :price_point_id

    # Optional quantity for the item.
    # @return [Integer]
    attr_accessor :quantity

    # Custom pricing for a component within a scheduled renewal.
    # @return [ScheduledRenewalComponentCustomPrice]
    attr_accessor :custom_price

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['item_type'] = 'item_type'
      @_hash['item_id'] = 'item_id'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['quantity'] = 'quantity'
      @_hash['custom_price'] = 'custom_price'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        price_point_id
        quantity
        custom_price
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(item_id:, price_point_id: SKIP, quantity: SKIP,
                   custom_price: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @item_type = 'Component'
      @item_id = item_id
      @price_point_id = price_point_id unless price_point_id == SKIP
      @quantity = quantity unless quantity == SKIP
      @custom_price = custom_price unless custom_price == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      item_id = hash.key?('item_id') ? hash['item_id'] : nil
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      quantity = hash.key?('quantity') ? hash['quantity'] : SKIP
      custom_price = ScheduledRenewalComponentCustomPrice.from_hash(hash['custom_price']) if
        hash['custom_price']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ScheduledRenewalItemRequestBodyComponent.new(item_id: item_id,
                                                   price_point_id: price_point_id,
                                                   quantity: quantity,
                                                   custom_price: custom_price,
                                                   additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [ScheduledRenewalItemRequestBodyComponent | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.item_type,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.item_id,
                                  ->(val) { val.instance_of? Integer })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['item_type'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['item_id'],
                                ->(val) { val.instance_of? Integer })
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} item_type: #{@item_type}, item_id: #{@item_id}, price_point_id:"\
      " #{@price_point_id}, quantity: #{@quantity}, custom_price: #{@custom_price},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} item_type: #{@item_type.inspect}, item_id: #{@item_id.inspect},"\
      " price_point_id: #{@price_point_id.inspect}, quantity: #{@quantity.inspect}, custom_price:"\
      " #{@custom_price.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
