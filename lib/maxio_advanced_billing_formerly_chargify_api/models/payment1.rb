# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # Payment1 Model.
  class Payment1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount_in_cents

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :success

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['success'] = 'success'
      @_hash['memo'] = 'memo'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        amount_in_cents
        success
        memo
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP,
                   amount_in_cents = SKIP,
                   success = SKIP,
                   memo = SKIP)
      @id = id unless id == SKIP
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
      @success = success unless success == SKIP
      @memo = memo unless memo == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : SKIP
      success = hash.key?('success') ? hash['success'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP

      # Create object from extracted values.
      Payment1.new(id,
                   amount_in_cents,
                   success,
                   memo)
    end

    # Validates an instance of the object from a given value.
    # @param [Payment1 | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
