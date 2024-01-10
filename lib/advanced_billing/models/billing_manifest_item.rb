# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # BillingManifestItem Model.
  class BillingManifestItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A handle for the line item transaction type
    # @return [LineItemTransactionType]
    attr_accessor :transaction_type

    # A handle for the billing manifest line item kind
    # @return [BillingManifestLineItemKind]
    attr_accessor :kind

    # A handle for the billing manifest line item kind
    # @return [Integer]
    attr_accessor :amount_in_cents

    # A handle for the billing manifest line item kind
    # @return [String]
    attr_accessor :memo

    # A handle for the billing manifest line item kind
    # @return [Integer]
    attr_accessor :discount_amount_in_cents

    # A handle for the billing manifest line item kind
    # @return [Integer]
    attr_accessor :taxable_amount_in_cents

    # A handle for the billing manifest line item kind
    # @return [Integer]
    attr_accessor :component_id

    # A handle for the billing manifest line item kind
    # @return [String]
    attr_accessor :component_handle

    # A handle for the billing manifest line item kind
    # @return [String]
    attr_accessor :component_name

    # A handle for the billing manifest line item kind
    # @return [Integer]
    attr_accessor :product_id

    # A handle for the billing manifest line item kind
    # @return [String]
    attr_accessor :product_handle

    # A handle for the billing manifest line item kind
    # @return [String]
    attr_accessor :product_name

    # A handle for the billing manifest line item kind
    # @return [String]
    attr_accessor :period_range_start

    # A handle for the billing manifest line item kind
    # @return [String]
    attr_accessor :period_range_end

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
      @_hash['component_handle'] = 'component_handle'
      @_hash['component_name'] = 'component_name'
      @_hash['product_id'] = 'product_id'
      @_hash['product_handle'] = 'product_handle'
      @_hash['product_name'] = 'product_name'
      @_hash['period_range_start'] = 'period_range_start'
      @_hash['period_range_end'] = 'period_range_end'
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
        component_handle
        component_name
        product_id
        product_handle
        product_name
        period_range_start
        period_range_end
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
                   component_id = SKIP,
                   component_handle = SKIP,
                   component_name = SKIP,
                   product_id = SKIP,
                   product_handle = SKIP,
                   product_name = SKIP,
                   period_range_start = SKIP,
                   period_range_end = SKIP)
      @transaction_type = transaction_type unless transaction_type == SKIP
      @kind = kind unless kind == SKIP
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
      @memo = memo unless memo == SKIP
      @discount_amount_in_cents = discount_amount_in_cents unless discount_amount_in_cents == SKIP
      @taxable_amount_in_cents = taxable_amount_in_cents unless taxable_amount_in_cents == SKIP
      @component_id = component_id unless component_id == SKIP
      @component_handle = component_handle unless component_handle == SKIP
      @component_name = component_name unless component_name == SKIP
      @product_id = product_id unless product_id == SKIP
      @product_handle = product_handle unless product_handle == SKIP
      @product_name = product_name unless product_name == SKIP
      @period_range_start = period_range_start unless period_range_start == SKIP
      @period_range_end = period_range_end unless period_range_end == SKIP
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
      component_handle =
        hash.key?('component_handle') ? hash['component_handle'] : SKIP
      component_name =
        hash.key?('component_name') ? hash['component_name'] : SKIP
      product_id = hash.key?('product_id') ? hash['product_id'] : SKIP
      product_handle =
        hash.key?('product_handle') ? hash['product_handle'] : SKIP
      product_name = hash.key?('product_name') ? hash['product_name'] : SKIP
      period_range_start =
        hash.key?('period_range_start') ? hash['period_range_start'] : SKIP
      period_range_end =
        hash.key?('period_range_end') ? hash['period_range_end'] : SKIP

      # Create object from extracted values.
      BillingManifestItem.new(transaction_type,
                              kind,
                              amount_in_cents,
                              memo,
                              discount_amount_in_cents,
                              taxable_amount_in_cents,
                              component_id,
                              component_handle,
                              component_name,
                              product_id,
                              product_handle,
                              product_name,
                              period_range_start,
                              period_range_end)
    end
  end
end
