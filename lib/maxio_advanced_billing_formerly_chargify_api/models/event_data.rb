# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # EventData Model.
  class EventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :previous_subscription_state

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :new_subscription_state

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['previous_subscription_state'] = 'previous_subscription_state'
      @_hash['new_subscription_state'] = 'new_subscription_state'
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

    def initialize(previous_subscription_state = nil,
                   new_subscription_state = nil)
      @previous_subscription_state = previous_subscription_state
      @new_subscription_state = new_subscription_state
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      previous_subscription_state =
        hash.key?('previous_subscription_state') ? hash['previous_subscription_state'] : nil
      new_subscription_state =
        hash.key?('new_subscription_state') ? hash['new_subscription_state'] : nil

      # Create object from extracted values.
      EventData.new(previous_subscription_state,
                    new_subscription_state)
    end

    # Validates an instance of the object from a given value.
    # @param [EventData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.previous_subscription_state,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.new_subscription_state,
                                  ->(val) { val.instance_of? String })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['previous_subscription_state'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['new_subscription_state'],
                                ->(val) { val.instance_of? String })
      )
    end
  end
end
