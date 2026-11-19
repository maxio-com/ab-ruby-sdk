# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ComponentCurrencyPrice Model.
  class ComponentCurrencyPrice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the stored currency price. This is `null` when the price point
    # uses the site exchange rate (`use_site_exchange_rate: true`), because the
    # price is calculated from the rate and is not stored.
    # @return [Integer]
    attr_accessor :id

    # The ID of the stored currency price. This is `null` when the price point
    # uses the site exchange rate (`use_site_exchange_rate: true`), because the
    # price is calculated from the rate and is not stored.
    # @return [String]
    attr_accessor :currency

    # The ID of the stored currency price. This is `null` when the price point
    # uses the site exchange rate (`use_site_exchange_rate: true`), because the
    # price is calculated from the rate and is not stored.
    # @return [String]
    attr_accessor :price

    # The ID of the stored currency price. This is `null` when the price point
    # uses the site exchange rate (`use_site_exchange_rate: true`), because the
    # price is calculated from the rate and is not stored.
    # @return [String]
    attr_accessor :formatted_price

    # The ID of the stored currency price. This is `null` when the price point
    # uses the site exchange rate (`use_site_exchange_rate: true`), because the
    # price is calculated from the rate and is not stored.
    # @return [Integer]
    attr_accessor :price_id

    # The ID of the stored currency price. This is `null` when the price point
    # uses the site exchange rate (`use_site_exchange_rate: true`), because the
    # price is calculated from the rate and is not stored.
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
      %w[
        id
      ]
    end

    def initialize(id: SKIP, currency: SKIP, price: SKIP, formatted_price: SKIP,
                   price_id: SKIP, price_point_id: SKIP,
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
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ComponentCurrencyPrice.new(id: id,
                                 currency: currency,
                                 price: price,
                                 formatted_price: formatted_price,
                                 price_id: price_id,
                                 price_point_id: price_point_id,
                                 additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [ComponentCurrencyPrice | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, currency: #{@currency}, price: #{@price}, formatted_price:"\
      " #{@formatted_price}, price_id: #{@price_id}, price_point_id: #{@price_point_id},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, currency: #{@currency.inspect}, price:"\
      " #{@price.inspect}, formatted_price: #{@formatted_price.inspect}, price_id:"\
      " #{@price_id.inspect}, price_point_id: #{@price_point_id.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
