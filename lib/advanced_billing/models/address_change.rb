# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # AddressChange Model.
  class AddressChange < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [InvoiceAddress]
    attr_accessor :before

    # TODO: Write general description for this method
    # @return [InvoiceAddress]
    attr_accessor :after

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['before'] = 'before'
      @_hash['after'] = 'after'
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

    def initialize(before:, after:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @before = before
      @after = after
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      before = InvoiceAddress.from_hash(hash['before']) if hash['before']
      after = InvoiceAddress.from_hash(hash['after']) if hash['after']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      AddressChange.new(before: before,
                        after: after,
                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} before: #{@before}, after: #{@after}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} before: #{@before.inspect}, after: #{@after.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
