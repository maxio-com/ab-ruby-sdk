# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # MRRMovement Model.
  class MRRMovement < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :category

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['category'] = 'category'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount
        category
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount = SKIP,
                   category = SKIP)
      @amount = amount unless amount == SKIP
      @category = category unless category == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      category = hash.key?('category') ? hash['category'] : SKIP

      # Create object from extracted values.
      MRRMovement.new(amount,
                      category)
    end
  end
end
