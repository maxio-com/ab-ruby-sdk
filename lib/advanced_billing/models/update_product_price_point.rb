# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # UpdateProductPricePoint Model.
  class UpdateProductPricePoint < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :handle

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_in_cents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['handle'] = 'handle'
      @_hash['price_in_cents'] = 'price_in_cents'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        handle
        price_in_cents
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(handle: SKIP, price_in_cents: SKIP,
                   additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @handle = handle unless handle == SKIP
      @price_in_cents = price_in_cents unless price_in_cents == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      price_in_cents =
        hash.key?('price_in_cents') ? hash['price_in_cents'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdateProductPricePoint.new(handle: handle,
                                  price_in_cents: price_in_cents,
                                  additional_properties: additional_properties)
    end
  end
end
