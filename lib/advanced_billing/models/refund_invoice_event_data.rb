# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Example schema for an `refund_invoice` event
  class RefundInvoiceEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # If true, credit was created and applied it to the invoice.
    # @return [TrueClass | FalseClass]
    attr_accessor :apply_credit

    # Consolidation level of the invoice, which is applicable to invoice
    # consolidation.  It will hold one of the following values:
    # * "none": A normal invoice with no consolidation.
    # * "child": An invoice segment which has been combined into a consolidated
    # invoice.
    # * "parent": A consolidated invoice, whose contents are composed of invoice
    # segments.
    # "Parent" invoices do not have lines of their own, but they have subtotals
    # and totals which aggregate the member invoice segments.
    # See also the [invoice consolidation
    # documentation](https://chargify.zendesk.com/hc/en-us/articles/440774639183
    # 5).
    # @return [InvoiceConsolidationLevel]
    attr_accessor :consolidation_level

    # Consolidation level of the invoice, which is applicable to invoice
    # consolidation.  It will hold one of the following values:
    # * "none": A normal invoice with no consolidation.
    # * "child": An invoice segment which has been combined into a consolidated
    # invoice.
    # * "parent": A consolidated invoice, whose contents are composed of invoice
    # segments.
    # "Parent" invoices do not have lines of their own, but they have subtotals
    # and totals which aggregate the member invoice segments.
    # See also the [invoice consolidation
    # documentation](https://chargify.zendesk.com/hc/en-us/articles/440774639183
    # 5).
    # @return [CreditNote]
    attr_accessor :credit_note_attributes

    # The refund memo.
    # @return [String]
    attr_accessor :memo

    # The full, original amount of the refund.
    # @return [String]
    attr_accessor :original_amount

    # The ID of the payment transaction to be refunded.
    # @return [Integer]
    attr_accessor :payment_id

    # The amount of the refund.
    # @return [String]
    attr_accessor :refund_amount

    # The ID of the refund transaction.
    # @return [Integer]
    attr_accessor :refund_id

    # The time the refund was applied, in ISO 8601 format, i.e.
    # "2019-06-07T17:20:06Z"
    # @return [DateTime]
    attr_accessor :transaction_time

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['apply_credit'] = 'apply_credit'
      @_hash['consolidation_level'] = 'consolidation_level'
      @_hash['credit_note_attributes'] = 'credit_note_attributes'
      @_hash['memo'] = 'memo'
      @_hash['original_amount'] = 'original_amount'
      @_hash['payment_id'] = 'payment_id'
      @_hash['refund_amount'] = 'refund_amount'
      @_hash['refund_id'] = 'refund_id'
      @_hash['transaction_time'] = 'transaction_time'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        apply_credit
        consolidation_level
        credit_note_attributes
        memo
        original_amount
        payment_id
        refund_amount
        refund_id
        transaction_time
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(apply_credit = SKIP,
                   consolidation_level = SKIP,
                   credit_note_attributes = SKIP,
                   memo = SKIP,
                   original_amount = SKIP,
                   payment_id = SKIP,
                   refund_amount = SKIP,
                   refund_id = SKIP,
                   transaction_time = SKIP)
      @apply_credit = apply_credit unless apply_credit == SKIP
      @consolidation_level = consolidation_level unless consolidation_level == SKIP
      @credit_note_attributes = credit_note_attributes unless credit_note_attributes == SKIP
      @memo = memo unless memo == SKIP
      @original_amount = original_amount unless original_amount == SKIP
      @payment_id = payment_id unless payment_id == SKIP
      @refund_amount = refund_amount unless refund_amount == SKIP
      @refund_id = refund_id unless refund_id == SKIP
      @transaction_time = transaction_time unless transaction_time == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      apply_credit = hash.key?('apply_credit') ? hash['apply_credit'] : SKIP
      consolidation_level =
        hash.key?('consolidation_level') ? hash['consolidation_level'] : SKIP
      credit_note_attributes = CreditNote.from_hash(hash['credit_note_attributes']) if
        hash['credit_note_attributes']
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      original_amount =
        hash.key?('original_amount') ? hash['original_amount'] : SKIP
      payment_id = hash.key?('payment_id') ? hash['payment_id'] : SKIP
      refund_amount = hash.key?('refund_amount') ? hash['refund_amount'] : SKIP
      refund_id = hash.key?('refund_id') ? hash['refund_id'] : SKIP
      transaction_time = if hash.key?('transaction_time')
                           (DateTimeHelper.from_rfc3339(hash['transaction_time']) if hash['transaction_time'])
                         else
                           SKIP
                         end

      # Create object from extracted values.
      RefundInvoiceEventData.new(apply_credit,
                                 consolidation_level,
                                 credit_note_attributes,
                                 memo,
                                 original_amount,
                                 payment_id,
                                 refund_amount,
                                 refund_id,
                                 transaction_time)
    end

    def to_custom_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end

    # Validates an instance of the object from a given value.
    # @param [RefundInvoiceEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
