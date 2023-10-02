# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # UpdatePaymentProfileResponse Model.
  class UpdatePaymentProfileResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [UpdatedPaymentProfile]
    attr_accessor :payment_profile

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_profile'] = 'payment_profile'
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

    def initialize(payment_profile = nil)
      @payment_profile = payment_profile
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_profile = UpdatedPaymentProfile.from_hash(hash['payment_profile']) if
        hash['payment_profile']

      # Create object from extracted values.
      UpdatePaymentProfileResponse.new(payment_profile)
    end
  end
end
