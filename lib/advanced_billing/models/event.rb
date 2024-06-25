# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Event Model.
  class Event < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :key

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscription_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :customer_id

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :event_specific_data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['key'] = 'key'
      @_hash['message'] = 'message'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['customer_id'] = 'customer_id'
      @_hash['created_at'] = 'created_at'
      @_hash['event_specific_data'] = 'event_specific_data'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      %w[
        subscription_id
        customer_id
        event_specific_data
      ]
    end

    def initialize(id:, key:, message:, subscription_id:, customer_id:,
                   created_at:, event_specific_data:, additional_properties: {})
      @id = id
      @key = key
      @message = message
      @subscription_id = subscription_id
      @customer_id = customer_id
      @created_at = created_at
      @event_specific_data = event_specific_data

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      key = hash.key?('key') ? hash['key'] : nil
      message = hash.key?('message') ? hash['message'] : nil
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : nil
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : nil
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   end
      event_specific_data = hash.key?('event_specific_data') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:EventEventSpecificData), hash['event_specific_data']
      ) : nil

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      Event.new(id: id,
                key: key,
                message: message,
                subscription_id: subscription_id,
                customer_id: customer_id,
                created_at: created_at,
                event_specific_data: event_specific_data,
                additional_properties: hash)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    # Validates an instance of the object from a given value.
    # @param [Event | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.id,
                                ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.key,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.message,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.subscription_id,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.customer_id,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.created_at,
                                  ->(val) { val.instance_of? DateTime }) and
            UnionTypeLookUp.get(:EventEventSpecificData)
                           .validate(value.event_specific_data)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['id'],
                              ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['key'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['message'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['subscription_id'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['customer_id'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['created_at'],
                                ->(val) { val.instance_of? String }) and
          UnionTypeLookUp.get(:EventEventSpecificData)
                         .validate(value['event_specific_data'])
      )
    end
  end
end
