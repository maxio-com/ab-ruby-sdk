# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ComponentCurrencyPrice Model.
  class ComponentCurrencyPrice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency

    # TODO: Write general description for this method
    # @return [String]
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

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['currency'] = 'currency'
      @_hash['price'] = 'price'
      @_hash['formatted_price'] = 'formatted_price'
      @_hash['price_id'] = 'price_id'
      @_hash['price_point_id'] = 'price_point_id'
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
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, currency: SKIP, price: SKIP, formatted_price: SKIP,
                   price_id: SKIP, price_point_id: SKIP,
                   additional_properties: {})
      @id = id unless id == SKIP
      @currency = currency unless currency == SKIP
      @price = price unless price == SKIP
      @formatted_price = formatted_price unless formatted_price == SKIP
      @price_id = price_id unless price_id == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
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

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ComponentCurrencyPrice.new(id: id,
                                 currency: currency,
                                 price: price,
                                 formatted_price: formatted_price,
                                 price_id: price_id,
                                 price_point_id: price_point_id,
                                 additional_properties: hash)
    end
  end
end
