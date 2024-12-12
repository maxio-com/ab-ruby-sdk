# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Errors Model.
  class Errors < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :per_page

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :price_point

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['per_page'] = 'per_page'
      @_hash['price_point'] = 'price_point'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        per_page
        price_point
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(per_page: SKIP, price_point: SKIP,
                   additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @per_page = per_page unless per_page == SKIP
      @price_point = price_point unless price_point == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      per_page = hash.key?('per_page') ? hash['per_page'] : SKIP
      price_point = hash.key?('price_point') ? hash['price_point'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Errors.new(per_page: per_page,
                 price_point: price_point,
                 additional_properties: additional_properties)
    end
  end
end
