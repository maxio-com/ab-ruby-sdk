# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CustomerError Model.
  class CustomerError < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :customer

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer'] = 'customer'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        customer
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(customer: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @customer = customer unless customer == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer = hash.key?('customer') ? hash['customer'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CustomerError.new(customer: customer,
                        additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CustomerError | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} customer: #{@customer}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} customer: #{@customer.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
