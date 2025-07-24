# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ProductFamilyResponse Model.
  class ProductFamilyResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [ProductFamily]
    attr_accessor :product_family

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['product_family'] = 'product_family'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        product_family
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(product_family: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @product_family = product_family unless product_family == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      product_family = ProductFamily.from_hash(hash['product_family']) if hash['product_family']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ProductFamilyResponse.new(product_family: product_family,
                                additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} product_family: #{@product_family}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} product_family: #{@product_family.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
