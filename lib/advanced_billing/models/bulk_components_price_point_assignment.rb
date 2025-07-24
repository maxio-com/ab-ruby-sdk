# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # BulkComponentsPricePointAssignment Model.
  class BulkComponentsPricePointAssignment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[ComponentPricePointAssignment]]
    attr_accessor :components

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['components'] = 'components'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        components
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(components: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @components = components unless components == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      components = nil
      unless hash['components'].nil?
        components = []
        hash['components'].each do |structure|
          components << (ComponentPricePointAssignment.from_hash(structure) if structure)
        end
      end

      components = SKIP unless hash.key?('components')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      BulkComponentsPricePointAssignment.new(components: components,
                                             additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} components: #{@components}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} components: #{@components.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
