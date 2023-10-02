# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # InvoiceEvent Model.
  class InvoiceEvent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # Invoice Event Type
    # @return [InvoiceEventTypeEnum]
    attr_accessor :event_type

    # The event data is the data that, when combined with the command, results
    # in the output invoice found in the invoice field.
    # @return [ApplyPaymentEventData]
    attr_accessor :event_data

    # The event data is the data that, when combined with the command, results
    # in the output invoice found in the invoice field.
    # @return [String]
    attr_accessor :timestamp

    # The event data is the data that, when combined with the command, results
    # in the output invoice found in the invoice field.
    # @return [Invoice]
    attr_accessor :invoice

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['event_type'] = 'event_type'
      @_hash['event_data'] = 'event_data'
      @_hash['timestamp'] = 'timestamp'
      @_hash['invoice'] = 'invoice'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        event_type
        event_data
        timestamp
        invoice
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP,
                   event_type = SKIP,
                   event_data = SKIP,
                   timestamp = SKIP,
                   invoice = SKIP)
      @id = id unless id == SKIP
      @event_type = event_type unless event_type == SKIP
      @event_data = event_data unless event_data == SKIP
      @timestamp = timestamp unless timestamp == SKIP
      @invoice = invoice unless invoice == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      event_type = hash.key?('event_type') ? hash['event_type'] : SKIP
      event_data = hash.key?('event_data') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:InvoiceEventEventData), hash['event_data']
      ) : SKIP
      timestamp = hash.key?('timestamp') ? hash['timestamp'] : SKIP
      invoice = Invoice.from_hash(hash['invoice']) if hash['invoice']

      # Create object from extracted values.
      InvoiceEvent.new(id,
                       event_type,
                       event_data,
                       timestamp,
                       invoice)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceEvent | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
