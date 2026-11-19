# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # A price quote for a purchase, without charging anything.
  class WalletPurchasePreview < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_point_id

    # The three-letter currency code the `amount` is denominated in, matching
    # the subscription's currency.
    # @return [String]
    attr_accessor :currency

    # The number of units the quote is for, as a decimal string.
    # @return [String]
    attr_accessor :quantity

    # The price for `quantity` units at this price point, as a decimal string.
    # @return [String]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['currency'] = 'currency'
      @_hash['quantity'] = 'quantity'
      @_hash['amount'] = 'amount'
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

    def initialize(price_point_id:, currency:, quantity:, amount:,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @price_point_id = price_point_id
      @currency = currency
      @quantity = quantity
      @amount = amount
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : nil
      currency = hash.key?('currency') ? hash['currency'] : nil
      quantity = hash.key?('quantity') ? hash['quantity'] : nil
      amount = hash.key?('amount') ? hash['amount'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletPurchasePreview.new(price_point_id: price_point_id,
                                currency: currency,
                                quantity: quantity,
                                amount: amount,
                                additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} price_point_id: #{@price_point_id}, currency: #{@currency}, quantity:"\
      " #{@quantity}, amount: #{@amount}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} price_point_id: #{@price_point_id.inspect}, currency: #{@currency.inspect},"\
      " quantity: #{@quantity.inspect}, amount: #{@amount.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
