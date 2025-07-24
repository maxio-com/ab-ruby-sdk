# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # CurrencyPrice Model.
  class CurrencyPrice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :price

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :formatted_price

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_point_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :product_price_point_id

    # Role for the price.
    # @return [CurrencyPriceRole]
    attr_accessor :role

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['currency'] = 'currency'
      @_hash['price'] = 'price'
      @_hash['formatted_price'] = 'formatted_price'
      @_hash['price_id'] = 'price_id'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['product_price_point_id'] = 'product_price_point_id'
      @_hash['role'] = 'role'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        currency
        price
        formatted_price
        price_id
        price_point_id
        product_price_point_id
        role
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, currency: SKIP, price: SKIP, formatted_price: SKIP,
                   price_id: SKIP, price_point_id: SKIP,
                   product_price_point_id: SKIP, role: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @currency = currency unless currency == SKIP
      @price = price unless price == SKIP
      @formatted_price = formatted_price unless formatted_price == SKIP
      @price_id = price_id unless price_id == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @product_price_point_id = product_price_point_id unless product_price_point_id == SKIP
      @role = role unless role == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      price = hash.key?('price') ? hash['price'] : SKIP
      formatted_price =
        hash.key?('formatted_price') ? hash['formatted_price'] : SKIP
      price_id = hash.key?('price_id') ? hash['price_id'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      product_price_point_id =
        hash.key?('product_price_point_id') ? hash['product_price_point_id'] : SKIP
      role = hash.key?('role') ? hash['role'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CurrencyPrice.new(id: id,
                        currency: currency,
                        price: price,
                        formatted_price: formatted_price,
                        price_id: price_id,
                        price_point_id: price_point_id,
                        product_price_point_id: product_price_point_id,
                        role: role,
                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, currency: #{@currency}, price: #{@price}, formatted_price:"\
      " #{@formatted_price}, price_id: #{@price_id}, price_point_id: #{@price_point_id},"\
      " product_price_point_id: #{@product_price_point_id}, role: #{@role}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, currency: #{@currency.inspect}, price:"\
      " #{@price.inspect}, formatted_price: #{@formatted_price.inspect}, price_id:"\
      " #{@price_id.inspect}, price_point_id: #{@price_point_id.inspect}, product_price_point_id:"\
      " #{@product_price_point_id.inspect}, role: #{@role.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
