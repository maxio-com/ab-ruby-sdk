# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ConsolidatedInvoice Model.
  class ConsolidatedInvoice < BaseModel
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
      %w[
        invoices
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(invoices = SKIP)
      @invoices = invoices unless invoices == SKIP
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

      invoices = SKIP unless hash.key?('invoices')

      # Create object from extracted values.
      ConsolidatedInvoice.new(invoices)
    end
  end
end
