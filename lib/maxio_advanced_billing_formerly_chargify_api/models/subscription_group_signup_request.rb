# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # SubscriptionGroupSignupRequest Model.
  class SubscriptionGroupSignupRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [SubscriptionGroupSignup]
    attr_accessor :subscription_group

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscription_group'] = 'subscription_group'
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

    def initialize(subscription_group = nil)
      @subscription_group = subscription_group
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subscription_group = SubscriptionGroupSignup.from_hash(hash['subscription_group']) if
        hash['subscription_group']

      # Create object from extracted values.
      SubscriptionGroupSignupRequest.new(subscription_group)
    end
  end
end
