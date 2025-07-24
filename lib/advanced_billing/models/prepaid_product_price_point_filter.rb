# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # PrepaidProductPricePointFilter Model.
  class PrepaidProductPricePointFilter < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Passed as a parameter to list methods to return only non null values.
    # @return [String]
    attr_reader :product_price_point_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['product_price_point_id'] = 'product_price_point_id'
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

    def initialize(additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @product_price_point_id = 'not_null'
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.


      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PrepaidProductPricePointFilter.new(additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} product_price_point_id: #{@product_price_point_id}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} product_price_point_id: #{@product_price_point_id.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
