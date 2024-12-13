# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CouponCurrencyRequest Model.
  class CouponCurrencyRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[UpdateCouponCurrency]]
    attr_accessor :currency_prices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['currency_prices'] = 'currency_prices'
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

    def initialize(currency_prices:, additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @currency_prices = currency_prices
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      currency_prices = nil
      unless hash['currency_prices'].nil?
        currency_prices = []
        hash['currency_prices'].each do |structure|
          currency_prices << (UpdateCouponCurrency.from_hash(structure) if structure)
        end
      end

      currency_prices = nil unless hash.key?('currency_prices')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CouponCurrencyRequest.new(currency_prices: currency_prices,
                                additional_properties: additional_properties)
    end
  end
end
