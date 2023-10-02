# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # BankAccountVerification Model.
  class BankAccountVerification < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :deposit_1_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :deposit_2_in_cents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['deposit_1_in_cents'] = 'deposit_1_in_cents'
      @_hash['deposit_2_in_cents'] = 'deposit_2_in_cents'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        deposit_1_in_cents
        deposit_2_in_cents
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(deposit_1_in_cents = SKIP,
                   deposit_2_in_cents = SKIP)
      @deposit_1_in_cents = deposit_1_in_cents unless deposit_1_in_cents == SKIP
      @deposit_2_in_cents = deposit_2_in_cents unless deposit_2_in_cents == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      deposit_1_in_cents =
        hash.key?('deposit_1_in_cents') ? hash['deposit_1_in_cents'] : SKIP
      deposit_2_in_cents =
        hash.key?('deposit_2_in_cents') ? hash['deposit_2_in_cents'] : SKIP

      # Create object from extracted values.
      BankAccountVerification.new(deposit_1_in_cents,
                                  deposit_2_in_cents)
    end
  end
end
