# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Purchase Model.
  class Purchase < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The number of wallet units to purchase, as a decimal string with at most 8
    # fractional digits. Send fractional values as strings: a JSON number with a
    # decimal point is rejected with `422`, because a double-precision float may
    # already have lost precision before the request arrives.
    # @return [Object]
    attr_accessor :quantity

    # The price point to purchase at. Must belong to the wallet's billing
    # product. Defaults to the `price_point_id` set on the wallet.
    # @return [Integer]
    attr_accessor :price_point_id

    # (Optional) A note recorded on the resulting grant's ledger row.
    # @return [String]
    attr_accessor :memo

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['quantity'] = 'quantity'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['memo'] = 'memo'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        price_point_id
        memo
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        memo
      ]
    end

    def initialize(quantity:, price_point_id: SKIP, memo: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @quantity = quantity
      @price_point_id = price_point_id unless price_point_id == SKIP
      @memo = memo unless memo == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      quantity = hash.key?('quantity') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:PurchaseQuantity), hash['quantity']
      ) : nil
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Purchase.new(quantity: quantity,
                   price_point_id: price_point_id,
                   memo: memo,
                   additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [Purchase | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return UnionTypeLookUp.get(:PurchaseQuantity)
                              .validate(value.quantity)
      end

      return false unless value.instance_of? Hash

      UnionTypeLookUp.get(:PurchaseQuantity)
                     .validate(value['quantity'])
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} quantity: #{@quantity}, price_point_id: #{@price_point_id}, memo: #{@memo},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} quantity: #{@quantity.inspect}, price_point_id: #{@price_point_id.inspect},"\
      " memo: #{@memo.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
