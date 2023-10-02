# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # ProformaInvoiceDiscountBreakout Model.
  class ProformaInvoiceDiscountBreakout < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :eligible_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :discount_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['eligible_amount'] = 'eligible_amount'
      @_hash['discount_amount'] = 'discount_amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        eligible_amount
        discount_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(eligible_amount = SKIP,
                   discount_amount = SKIP)
      @eligible_amount = eligible_amount unless eligible_amount == SKIP
      @discount_amount = discount_amount unless discount_amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      eligible_amount =
        hash.key?('eligible_amount') ? hash['eligible_amount'] : SKIP
      discount_amount =
        hash.key?('discount_amount') ? hash['discount_amount'] : SKIP

      # Create object from extracted values.
      ProformaInvoiceDiscountBreakout.new(eligible_amount,
                                          discount_amount)
    end
  end
end
