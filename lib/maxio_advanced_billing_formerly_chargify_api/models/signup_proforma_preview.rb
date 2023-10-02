# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # SignupProformaPreview Model.
  class SignupProformaPreview < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :current_proforma_invoice

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :next_proforma_invoice

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['current_proforma_invoice'] = 'current_proforma_invoice'
      @_hash['next_proforma_invoice'] = 'next_proforma_invoice'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        current_proforma_invoice
        next_proforma_invoice
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(current_proforma_invoice = SKIP,
                   next_proforma_invoice = SKIP)
      @current_proforma_invoice = current_proforma_invoice unless current_proforma_invoice == SKIP
      @next_proforma_invoice = next_proforma_invoice unless next_proforma_invoice == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      current_proforma_invoice =
        hash.key?('current_proforma_invoice') ? hash['current_proforma_invoice'] : SKIP
      next_proforma_invoice =
        hash.key?('next_proforma_invoice') ? hash['next_proforma_invoice'] : SKIP

      # Create object from extracted values.
      SignupProformaPreview.new(current_proforma_invoice,
                                next_proforma_invoice)
    end
  end
end
