# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListProformaInvoicesResponse Model.
  class ListProformaInvoicesResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[ProformaInvoice]]
    attr_accessor :proforma_invoices

    # TODO: Write general description for this method
    # @return [ListProformaInvoicesMeta]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['proforma_invoices'] = 'proforma_invoices'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        proforma_invoices
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(proforma_invoices = SKIP,
                   meta = SKIP,
                   additional_properties = {})
      @proforma_invoices = proforma_invoices unless proforma_invoices == SKIP
      @meta = meta unless meta == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      proforma_invoices = nil
      unless hash['proforma_invoices'].nil?
        proforma_invoices = []
        hash['proforma_invoices'].each do |structure|
          proforma_invoices << (ProformaInvoice.from_hash(structure) if structure)
        end
      end

      proforma_invoices = SKIP unless hash.key?('proforma_invoices')
      meta = ListProformaInvoicesMeta.from_hash(hash['meta']) if hash['meta']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ListProformaInvoicesResponse.new(proforma_invoices,
                                       meta,
                                       hash)
    end
  end
end
