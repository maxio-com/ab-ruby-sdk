# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # InvoiceDisplaySettings Model.
  class InvoiceDisplaySettings < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :hide_zero_subtotal_lines

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :include_discounts_on_lines

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['hide_zero_subtotal_lines'] = 'hide_zero_subtotal_lines'
      @_hash['include_discounts_on_lines'] = 'include_discounts_on_lines'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        hide_zero_subtotal_lines
        include_discounts_on_lines
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(hide_zero_subtotal_lines: SKIP,
                   include_discounts_on_lines: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @hide_zero_subtotal_lines = hide_zero_subtotal_lines unless hide_zero_subtotal_lines == SKIP
      unless include_discounts_on_lines == SKIP
        @include_discounts_on_lines =
          include_discounts_on_lines
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      hide_zero_subtotal_lines =
        hash.key?('hide_zero_subtotal_lines') ? hash['hide_zero_subtotal_lines'] : SKIP
      include_discounts_on_lines =
        hash.key?('include_discounts_on_lines') ? hash['include_discounts_on_lines'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoiceDisplaySettings.new(hide_zero_subtotal_lines: hide_zero_subtotal_lines,
                                 include_discounts_on_lines: include_discounts_on_lines,
                                 additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceDisplaySettings | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} hide_zero_subtotal_lines: #{@hide_zero_subtotal_lines},"\
      " include_discounts_on_lines: #{@include_discounts_on_lines}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} hide_zero_subtotal_lines: #{@hide_zero_subtotal_lines.inspect},"\
      " include_discounts_on_lines: #{@include_discounts_on_lines.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
