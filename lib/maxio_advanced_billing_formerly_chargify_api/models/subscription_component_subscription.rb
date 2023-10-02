# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # An optional object, will be returned if provided `include=subscription`
  # query param.
  class SubscriptionComponentSubscription < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :state

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :updated_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['state'] = 'state'
      @_hash['updated_at'] = 'updated_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        state
        updated_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(state = SKIP,
                   updated_at = SKIP)
      @state = state unless state == SKIP
      @updated_at = updated_at unless updated_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      state = hash.key?('state') ? hash['state'] : SKIP
      updated_at = hash.key?('updated_at') ? hash['updated_at'] : SKIP

      # Create object from extracted values.
      SubscriptionComponentSubscription.new(state,
                                            updated_at)
    end
  end
end
