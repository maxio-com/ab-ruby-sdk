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
        consolidation_level
        memo
        original_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(apply_credit = nil,
                   credit_note_attributes = nil,
                   payment_id = nil,
                   refund_amount = nil,
                   refund_id = nil,
                   transaction_time = nil,
                   consolidation_level = SKIP,
                   memo = SKIP,
                   original_amount = SKIP,
                   additional_properties = {})
      @apply_credit = apply_credit
      @consolidation_level = consolidation_level unless consolidation_level == SKIP
      @credit_note_attributes = credit_note_attributes
      @memo = memo unless memo == SKIP
      @original_amount = original_amount unless original_amount == SKIP
      @payment_id = payment_id
      @refund_amount = refund_amount
      @refund_id = refund_id
      @transaction_time = transaction_time

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      apply_credit = hash.key?('apply_credit') ? hash['apply_credit'] : nil
      credit_note_attributes = CreditNote.from_hash(hash['credit_note_attributes']) if
        hash['credit_note_attributes']
      payment_id = hash.key?('payment_id') ? hash['payment_id'] : nil
      refund_amount = hash.key?('refund_amount') ? hash['refund_amount'] : nil
      refund_id = hash.key?('refund_id') ? hash['refund_id'] : nil
      transaction_time = if hash.key?('transaction_time')
                           (DateTimeHelper.from_rfc3339(hash['transaction_time']) if hash['transaction_time'])
                         end
      consolidation_level =
        hash.key?('consolidation_level') ? hash['consolidation_level'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      original_amount =
        hash.key?('original_amount') ? hash['original_amount'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      RefundInvoiceEventData.new(apply_credit,
                                 credit_note_attributes,
                                 payment_id,
                                 refund_amount,
                                 refund_id,
                                 transaction_time,
                                 consolidation_level,
                                 memo,
                                 original_amount,
                                 hash)
    end

    def to_custom_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end

    # Validates an instance of the object from a given value.
    # @param [RefundInvoiceEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.apply_credit,
                                ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass }) and
            APIHelper.valid_type?(value.credit_note_attributes,
                                  ->(val) { CreditNote.validate(val) },
                                  is_model_hash: true) and
            APIHelper.valid_type?(value.payment_id,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.refund_amount,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.refund_id,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.transaction_time,
                                  ->(val) { val.instance_of? DateTime })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['apply_credit'],
                              ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass }) and
          APIHelper.valid_type?(value['credit_note_attributes'],
                                ->(val) { CreditNote.validate(val) },
                                is_model_hash: true) and
          APIHelper.valid_type?(value['payment_id'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['refund_amount'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['refund_id'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['transaction_time'],
                                ->(val) { val.instance_of? String })
      )
    end
  end
end
