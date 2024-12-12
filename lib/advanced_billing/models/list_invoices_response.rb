# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListInvoicesResponse Model.
  class ListInvoicesResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[Invoice]]
    attr_accessor :invoices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['invoices'] = 'invoices'
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

    def initialize(invoices:, additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @invoices = invoices
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      invoices = nil
      unless hash['invoices'].nil?
        invoices = []
        hash['invoices'].each do |structure|
          invoices << (Invoice.from_hash(structure) if structure)
        end
      end

      invoices = nil unless hash.key?('invoices')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ListInvoicesResponse.new(invoices: invoices,
                               additional_properties: additional_properties)
    end
  end
end
