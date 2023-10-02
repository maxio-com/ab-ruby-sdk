# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # DeductServiceCreditRequest Model.
  class DeductServiceCreditRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [DeductServiceCredit]
    attr_accessor :deduction

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['deduction'] = 'deduction'
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

    def initialize(deduction = nil)
      @deduction = deduction
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      deduction = DeductServiceCredit.from_hash(hash['deduction']) if hash['deduction']

      # Create object from extracted values.
      DeductServiceCreditRequest.new(deduction)
    end
  end
end
