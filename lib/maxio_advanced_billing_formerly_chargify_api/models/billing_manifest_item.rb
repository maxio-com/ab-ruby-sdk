# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # BillingManifestItem Model.
  class BillingManifestItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :transaction_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :kind

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount_in_cents

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :discount_amount_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :taxable_amount_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :component_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_type'] = 'transaction_type'
      @_hash['kind'] = 'kind'
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['memo'] = 'memo'
      @_hash['discount_amount_in_cents'] = 'discount_amount_in_cents'
      @_hash['taxable_amount_in_cents'] = 'taxable_amount_in_cents'
      @_hash['component_id'] = 'component_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        transaction_type
        kind
        amount_in_cents
        memo
        discount_amount_in_cents
        taxable_amount_in_cents
        component_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(transaction_type = SKIP,
                   kind = SKIP,
                   amount_in_cents = SKIP,
                   memo = SKIP,
                   discount_amount_in_cents = SKIP,
                   taxable_amount_in_cents = SKIP,
                   component_id = SKIP)
      @transaction_type = transaction_type unless transaction_type == SKIP
      @kind = kind unless kind == SKIP
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
      @memo = memo unless memo == SKIP
      @discount_amount_in_cents = discount_amount_in_cents unless discount_amount_in_cents == SKIP
      @taxable_amount_in_cents = taxable_amount_in_cents unless taxable_amount_in_cents == SKIP
      @component_id = component_id unless component_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_type =
        hash.key?('transaction_type') ? hash['transaction_type'] : SKIP
      kind = hash.key?('kind') ? hash['kind'] : SKIP
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      discount_amount_in_cents =
        hash.key?('discount_amount_in_cents') ? hash['discount_amount_in_cents'] : SKIP
      taxable_amount_in_cents =
        hash.key?('taxable_amount_in_cents') ? hash['taxable_amount_in_cents'] : SKIP
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP

      # Create object from extracted values.
      BillingManifestItem.new(transaction_type,
                              kind,
                              amount_in_cents,
                              memo,
                              discount_amount_in_cents,
                              taxable_amount_in_cents,
                              component_id)
    end
  end
end
