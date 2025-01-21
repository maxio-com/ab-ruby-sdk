# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Refund consolidated invoice
  class RefundConsolidatedInvoice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A description for the refund
    # @return [String]
    attr_accessor :memo

    # The ID of the payment to be refunded
    # @return [Integer]
    attr_accessor :payment_id

    # An array of segment uids to refund or the string 'all' to indicate that
    # all segments should be refunded
    # @return [Object]
    attr_accessor :segment_uids

    # Flag that marks refund as external (no money is returned to the customer).
    # Defaults to `false`.
    # @return [TrueClass | FalseClass]
    attr_accessor :external

    # If set to true, creates credit and applies it to an invoice. Defaults to
    # `false`.
    # @return [TrueClass | FalseClass]
    attr_accessor :apply_credit

    # The amount of payment to be refunded in decimal format. Example: "10.50".
    # This will default to the full amount of the payment if not provided.
    # @return [String]
    attr_accessor :amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['memo'] = 'memo'
      @_hash['payment_id'] = 'payment_id'
      @_hash['segment_uids'] = 'segment_uids'
      @_hash['external'] = 'external'
      @_hash['apply_credit'] = 'apply_credit'
      @_hash['amount'] = 'amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        external
        apply_credit
        amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(memo:, payment_id:, segment_uids:, external: SKIP,
                   apply_credit: SKIP, amount: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @memo = memo
      @payment_id = payment_id
      @segment_uids = segment_uids
      @external = external unless external == SKIP
      @apply_credit = apply_credit unless apply_credit == SKIP
      @amount = amount unless amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      memo = hash.key?('memo') ? hash['memo'] : nil
      payment_id = hash.key?('payment_id') ? hash['payment_id'] : nil
      segment_uids = hash.key?('segment_uids') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:RefundConsolidatedInvoiceSegmentUids), hash['segment_uids']
      ) : nil
      external = hash.key?('external') ? hash['external'] : SKIP
      apply_credit = hash.key?('apply_credit') ? hash['apply_credit'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      RefundConsolidatedInvoice.new(memo: memo,
                                    payment_id: payment_id,
                                    segment_uids: segment_uids,
                                    external: external,
                                    apply_credit: apply_credit,
                                    amount: amount,
                                    additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [RefundConsolidatedInvoice | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.memo,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.payment_id,
                                  ->(val) { val.instance_of? Integer }) and
            UnionTypeLookUp.get(:RefundConsolidatedInvoiceSegmentUids)
                           .validate(value.segment_uids)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['memo'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['payment_id'],
                                ->(val) { val.instance_of? Integer }) and
          UnionTypeLookUp.get(:RefundConsolidatedInvoiceSegmentUids)
                         .validate(value['segment_uids'])
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} memo: #{@memo}, payment_id: #{@payment_id}, segment_uids: #{@segment_uids},"\
      " external: #{@external}, apply_credit: #{@apply_credit}, amount: #{@amount},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} memo: #{@memo.inspect}, payment_id: #{@payment_id.inspect}, segment_uids:"\
      " #{@segment_uids.inspect}, external: #{@external.inspect}, apply_credit:"\
      " #{@apply_credit.inspect}, amount: #{@amount.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
