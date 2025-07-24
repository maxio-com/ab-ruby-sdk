# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # ApplyPaymentEvent Model.
  class ApplyPaymentEvent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :timestamp

    # TODO: Write general description for this method
    # @return [Invoice]
    attr_accessor :invoice

    # TODO: Write general description for this method
    # @return [InvoiceEventType]
    attr_accessor :event_type

    # Example schema for an `apply_payment` event
    # @return [ApplyPaymentEventData]
    attr_accessor :event_data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['timestamp'] = 'timestamp'
      @_hash['invoice'] = 'invoice'
      @_hash['event_type'] = 'event_type'
      @_hash['event_data'] = 'event_data'
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

    def initialize(id:, timestamp:, invoice:,
                   event_type: InvoiceEventType::APPLY_PAYMENT, event_data:,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id
      @timestamp = timestamp
      @invoice = invoice
      @event_type = event_type
      @event_data = event_data
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      timestamp = if hash.key?('timestamp')
                    (DateTimeHelper.from_rfc3339(hash['timestamp']) if hash['timestamp'])
                  end
      invoice = Invoice.from_hash(hash['invoice']) if hash['invoice']
      event_type = hash['event_type'] ||= InvoiceEventType::APPLY_PAYMENT
      event_data = ApplyPaymentEventData.from_hash(hash['event_data']) if hash['event_data']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ApplyPaymentEvent.new(id: id,
                            timestamp: timestamp,
                            invoice: invoice,
                            event_type: event_type,
                            event_data: event_data,
                            additional_properties: additional_properties)
    end

    def to_custom_timestamp
      DateTimeHelper.to_rfc3339(timestamp)
    end

    # Validates an instance of the object from a given value.
    # @param [ApplyPaymentEvent | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.id,
                                ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.timestamp,
                                  ->(val) { val.instance_of? DateTime }) and
            APIHelper.valid_type?(value.invoice,
                                  ->(val) { Invoice.validate(val) },
                                  is_model_hash: true) and
            APIHelper.valid_type?(value.event_type,
                                  ->(val) { InvoiceEventType.validate(val) }) and
            APIHelper.valid_type?(value.event_data,
                                  ->(val) { ApplyPaymentEventData.validate(val) },
                                  is_model_hash: true)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['id'],
                              ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['timestamp'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['invoice'],
                                ->(val) { Invoice.validate(val) },
                                is_model_hash: true) and
          APIHelper.valid_type?(value['event_type'],
                                ->(val) { InvoiceEventType.validate(val) }) and
          APIHelper.valid_type?(value['event_data'],
                                ->(val) { ApplyPaymentEventData.validate(val) },
                                is_model_hash: true)
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, timestamp: #{@timestamp}, invoice: #{@invoice}, event_type:"\
      " #{@event_type}, event_data: #{@event_data}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, timestamp: #{@timestamp.inspect}, invoice:"\
      " #{@invoice.inspect}, event_type: #{@event_type.inspect}, event_data:"\
      " #{@event_data.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
