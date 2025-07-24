# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # CreateProductCurrencyPrice Model.
  class CreateProductCurrencyPrice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # ISO code for one of the site level currencies.
    # @return [String]
    attr_accessor :currency

    # Price for the given role.
    # @return [Integer]
    attr_accessor :price

    # Role for the price.
    # @return [CurrencyPriceRole]
    attr_accessor :role

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['currency'] = 'currency'
      @_hash['price'] = 'price'
      @_hash['role'] = 'role'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(currency:, price:, role:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @currency = currency
      @price = price
      @role = role
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      currency = hash.key?('currency') ? hash['currency'] : nil
      price = hash.key?('price') ? hash['price'] : nil
      role = hash.key?('role') ? hash['role'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateProductCurrencyPrice.new(currency: currency,
                                     price: price,
                                     role: role,
                                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} currency: #{@currency}, price: #{@price}, role: #{@role},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} currency: #{@currency.inspect}, price: #{@price.inspect}, role:"\
      " #{@role.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
