# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

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

    def initialize(per_page: SKIP, price_point: SKIP, additional_properties: {})
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

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} per_page: #{@per_page}, price_point: #{@price_point},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} per_page: #{@per_page.inspect}, price_point: #{@price_point.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
