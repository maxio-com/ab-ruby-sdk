# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Example schema for an `change_invoice_collection_method` event
  class ChangeInvoiceCollectionMethodEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The previous collection method of the invoice.
    # @return [String]
    attr_accessor :from_collection_method

    # The new collection method of the invoice.
    # @return [String]
    attr_accessor :to_collection_method

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['from_collection_method'] = 'from_collection_method'
      @_hash['to_collection_method'] = 'to_collection_method'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        from_collection_method
        to_collection_method
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(from_collection_method = SKIP,
                   to_collection_method = SKIP)
      @from_collection_method = from_collection_method unless from_collection_method == SKIP
      @to_collection_method = to_collection_method unless to_collection_method == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      from_collection_method =
        hash.key?('from_collection_method') ? hash['from_collection_method'] : SKIP
      to_collection_method =
        hash.key?('to_collection_method') ? hash['to_collection_method'] : SKIP

      # Create object from extracted values.
      ChangeInvoiceCollectionMethodEventData.new(from_collection_method,
                                                 to_collection_method)
    end

    # Validates an instance of the object from a given value.
    # @param [ChangeInvoiceCollectionMethodEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
