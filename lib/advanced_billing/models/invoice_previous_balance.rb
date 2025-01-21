# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # InvoicePreviousBalance Model.
  class InvoicePreviousBalance < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :captured_at

    # TODO: Write general description for this method
    # @return [Array[InvoiceBalanceItem]]
    attr_accessor :invoices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['captured_at'] = 'captured_at'
      @_hash['invoices'] = 'invoices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        captured_at
        invoices
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(captured_at: SKIP, invoices: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @captured_at = captured_at unless captured_at == SKIP
      @invoices = invoices unless invoices == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      captured_at = if hash.key?('captured_at')
                      (DateTimeHelper.from_rfc3339(hash['captured_at']) if hash['captured_at'])
                    else
                      SKIP
                    end
      # Parameter is an array, so we need to iterate through it
      invoices = nil
      unless hash['invoices'].nil?
        invoices = []
        hash['invoices'].each do |structure|
          invoices << (InvoiceBalanceItem.from_hash(structure) if structure)
        end
      end

      invoices = SKIP unless hash.key?('invoices')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoicePreviousBalance.new(captured_at: captured_at,
                                 invoices: invoices,
                                 additional_properties: additional_properties)
    end

    def to_custom_captured_at
      DateTimeHelper.to_rfc3339(captured_at)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoicePreviousBalance | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} captured_at: #{@captured_at}, invoices: #{@invoices},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} captured_at: #{@captured_at.inspect}, invoices: #{@invoices.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
