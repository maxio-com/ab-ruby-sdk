# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # AggregatedEntitlementsResponse Model.
  class AggregatedEntitlementsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscription_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :customer_id

    # The subscription's current state, e.g. `active`, `trialing`, `canceled`.
    # @return [String]
    attr_accessor :status

    # The subscription's current state, e.g. `active`, `trialing`, `canceled`.
    # @return [Array[AggregatedEntitlement]]
    attr_accessor :entitlements

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['customer_id'] = 'customer_id'
      @_hash['status'] = 'status'
      @_hash['entitlements'] = 'entitlements'
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

    def initialize(subscription_id:, customer_id:, status:, entitlements:,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @subscription_id = subscription_id
      @customer_id = customer_id
      @status = status
      @entitlements = entitlements
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : nil
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : nil
      status = hash.key?('status') ? hash['status'] : nil
      # Parameter is an array, so we need to iterate through it
      entitlements = nil
      unless hash['entitlements'].nil?
        entitlements = []
        hash['entitlements'].each do |structure|
          entitlements << (AggregatedEntitlement.from_hash(structure) if structure)
        end
      end

      entitlements = nil unless hash.key?('entitlements')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      AggregatedEntitlementsResponse.new(subscription_id: subscription_id,
                                         customer_id: customer_id,
                                         status: status,
                                         entitlements: entitlements,
                                         additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} subscription_id: #{@subscription_id}, customer_id: #{@customer_id}, status:"\
      " #{@status}, entitlements: #{@entitlements}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} subscription_id: #{@subscription_id.inspect}, customer_id:"\
      " #{@customer_id.inspect}, status: #{@status.inspect}, entitlements:"\
      " #{@entitlements.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
