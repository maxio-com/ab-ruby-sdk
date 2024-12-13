# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # ReactivateSubscriptionGroupResponse Model.
  class ReactivateSubscriptionGroupResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :scheme

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :customer_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :payment_profile_id

    # TODO: Write general description for this method
    # @return [Array[Integer]]
    attr_accessor :subscription_ids

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :primary_subscription_id

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :next_assessment_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :state

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :cancel_at_end_of_period

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['scheme'] = 'scheme'
      @_hash['customer_id'] = 'customer_id'
      @_hash['payment_profile_id'] = 'payment_profile_id'
      @_hash['subscription_ids'] = 'subscription_ids'
      @_hash['primary_subscription_id'] = 'primary_subscription_id'
      @_hash['next_assessment_at'] = 'next_assessment_at'
      @_hash['state'] = 'state'
      @_hash['cancel_at_end_of_period'] = 'cancel_at_end_of_period'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        scheme
        customer_id
        payment_profile_id
        subscription_ids
        primary_subscription_id
        next_assessment_at
        state
        cancel_at_end_of_period
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid: SKIP, scheme: SKIP, customer_id: SKIP,
                   payment_profile_id: SKIP, subscription_ids: SKIP,
                   primary_subscription_id: SKIP, next_assessment_at: SKIP,
                   state: SKIP, cancel_at_end_of_period: SKIP,
                   additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @uid = uid unless uid == SKIP
      @scheme = scheme unless scheme == SKIP
      @customer_id = customer_id unless customer_id == SKIP
      @payment_profile_id = payment_profile_id unless payment_profile_id == SKIP
      @subscription_ids = subscription_ids unless subscription_ids == SKIP
      @primary_subscription_id = primary_subscription_id unless primary_subscription_id == SKIP
      @next_assessment_at = next_assessment_at unless next_assessment_at == SKIP
      @state = state unless state == SKIP
      @cancel_at_end_of_period = cancel_at_end_of_period unless cancel_at_end_of_period == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      scheme = hash.key?('scheme') ? hash['scheme'] : SKIP
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : SKIP
      payment_profile_id =
        hash.key?('payment_profile_id') ? hash['payment_profile_id'] : SKIP
      subscription_ids =
        hash.key?('subscription_ids') ? hash['subscription_ids'] : SKIP
      primary_subscription_id =
        hash.key?('primary_subscription_id') ? hash['primary_subscription_id'] : SKIP
      next_assessment_at = if hash.key?('next_assessment_at')
                             (DateTimeHelper.from_rfc3339(hash['next_assessment_at']) if hash['next_assessment_at'])
                           else
                             SKIP
                           end
      state = hash.key?('state') ? hash['state'] : SKIP
      cancel_at_end_of_period =
        hash.key?('cancel_at_end_of_period') ? hash['cancel_at_end_of_period'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ReactivateSubscriptionGroupResponse.new(uid: uid,
                                              scheme: scheme,
                                              customer_id: customer_id,
                                              payment_profile_id: payment_profile_id,
                                              subscription_ids: subscription_ids,
                                              primary_subscription_id: primary_subscription_id,
                                              next_assessment_at: next_assessment_at,
                                              state: state,
                                              cancel_at_end_of_period: cancel_at_end_of_period,
                                              additional_properties: additional_properties)
    end

    def to_custom_next_assessment_at
      DateTimeHelper.to_rfc3339(next_assessment_at)
    end
  end
end
