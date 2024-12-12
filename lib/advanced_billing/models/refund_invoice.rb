# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Refund an invoice or a segment of a consolidated invoice.
  class RefundInvoice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The amount to be refunded in decimal format as a string. Example: "10.50".
    # Must not exceed the remaining refundable balance of the payment.
    # @return [String]
    attr_accessor :amount

    # A description that will be attached to the refund
    # @return [String]
    attr_accessor :memo

    # The ID of the payment to be refunded
    # @return [Integer]
    attr_accessor :payment_id

    # Flag that marks refund as external (no money is returned to the customer).
    # Defaults to `false`.
    # @return [TrueClass | FalseClass]
    attr_accessor :external

    # If set to true, creates credit and applies it to an invoice. Defaults to
    # `false`.
    # @return [TrueClass | FalseClass]
    attr_accessor :apply_credit

    # If `apply_credit` set to false and refunding full amount, if
    # `void_invoice` set to true, invoice will be voided after refund. Defaults
    # to `false`.
    # @return [TrueClass | FalseClass]
    attr_accessor :void_invoice

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['memo'] = 'memo'
      @_hash['payment_id'] = 'payment_id'
      @_hash['external'] = 'external'
      @_hash['apply_credit'] = 'apply_credit'
      @_hash['void_invoice'] = 'void_invoice'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        external
        apply_credit
        void_invoice
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount:, memo:, payment_id:, external: SKIP,
                   apply_credit: SKIP, void_invoice: SKIP,
                   additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @amount = amount
      @memo = memo
      @payment_id = payment_id
      @external = external unless external == SKIP
      @apply_credit = apply_credit unless apply_credit == SKIP
      @void_invoice = void_invoice unless void_invoice == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : nil
      memo = hash.key?('memo') ? hash['memo'] : nil
      payment_id = hash.key?('payment_id') ? hash['payment_id'] : nil
      external = hash.key?('external') ? hash['external'] : SKIP
      apply_credit = hash.key?('apply_credit') ? hash['apply_credit'] : SKIP
      void_invoice = hash.key?('void_invoice') ? hash['void_invoice'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      RefundInvoice.new(amount: amount,
                        memo: memo,
                        payment_id: payment_id,
                        external: external,
                        apply_credit: apply_credit,
                        void_invoice: void_invoice,
                        additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [RefundInvoice | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.amount,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.memo,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.payment_id,
                                  ->(val) { val.instance_of? Integer })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['amount'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['memo'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['payment_id'],
                                ->(val) { val.instance_of? Integer })
      )
    end
  end
end
