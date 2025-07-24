# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # ChargifyEBB Model.
  class ChargifyEBB < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # This timestamp determines what billing period the event will be billed in.
    # If your request payload does not include it, Chargify will add
    # `chargify.timestamp` to the event payload and set the value to `now`.
    # @return [DateTime]
    attr_accessor :timestamp

    # A unique ID set by Chargify. Please note that this field is reserved. If
    # `chargify.id` is present in the request payload, it will be overwritten.
    # @return [String]
    attr_accessor :id

    # An ISO-8601 timestamp, set by Chargify at the time each event is recorded.
    # Please note that this field is reserved. If `chargify.created_at` is
    # present in the request payload, it will be overwritten.
    # @return [DateTime]
    attr_accessor :created_at

    # User-defined string scoped per-stream. Duplicate events within a stream
    # will be silently ignored. Tokens expire after 31 days.
    # @return [String]
    attr_accessor :uniqueness_token

    # Id of Maxio Advanced Billing Subscription which is connected to this
    # event. 
    # Provide `subscription_id` if you configured `chargify.subscription_id` as
    # Subscription Identifier in your Event Stream.
    # @return [Integer]
    attr_accessor :subscription_id

    # Reference of Maxio Advanced Billing Subscription which is connected to
    # this event. 
    # Provide `subscription_reference` if you configured
    # `chargify.subscription_reference` as Subscription Identifier in your Event
    # Stream.
    # @return [String]
    attr_accessor :subscription_reference

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['timestamp'] = 'timestamp'
      @_hash['id'] = 'id'
      @_hash['created_at'] = 'created_at'
      @_hash['uniqueness_token'] = 'uniqueness_token'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['subscription_reference'] = 'subscription_reference'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        timestamp
        id
        created_at
        uniqueness_token
        subscription_id
        subscription_reference
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(timestamp: SKIP, id: SKIP, created_at: SKIP,
                   uniqueness_token: SKIP, subscription_id: SKIP,
                   subscription_reference: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @timestamp = timestamp unless timestamp == SKIP
      @id = id unless id == SKIP
      @created_at = created_at unless created_at == SKIP
      @uniqueness_token = uniqueness_token unless uniqueness_token == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @subscription_reference = subscription_reference unless subscription_reference == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      timestamp = if hash.key?('timestamp')
                    (DateTimeHelper.from_rfc3339(hash['timestamp']) if hash['timestamp'])
                  else
                    SKIP
                  end
      id = hash.key?('id') ? hash['id'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      uniqueness_token =
        hash.key?('uniqueness_token') ? hash['uniqueness_token'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      subscription_reference =
        hash.key?('subscription_reference') ? hash['subscription_reference'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ChargifyEBB.new(timestamp: timestamp,
                      id: id,
                      created_at: created_at,
                      uniqueness_token: uniqueness_token,
                      subscription_id: subscription_id,
                      subscription_reference: subscription_reference,
                      additional_properties: additional_properties)
    end

    def to_custom_timestamp
      DateTimeHelper.to_rfc3339(timestamp)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} timestamp: #{@timestamp}, id: #{@id}, created_at: #{@created_at},"\
      " uniqueness_token: #{@uniqueness_token}, subscription_id: #{@subscription_id},"\
      " subscription_reference: #{@subscription_reference}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} timestamp: #{@timestamp.inspect}, id: #{@id.inspect}, created_at:"\
      " #{@created_at.inspect}, uniqueness_token: #{@uniqueness_token.inspect}, subscription_id:"\
      " #{@subscription_id.inspect}, subscription_reference: #{@subscription_reference.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
