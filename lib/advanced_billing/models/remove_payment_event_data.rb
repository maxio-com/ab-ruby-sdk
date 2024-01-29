# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Example schema for an `remove_payment` event
  class RemovePaymentEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Transaction ID of the original payment that was removed
    # @return [Integer]
    attr_accessor :transaction_id

    # Memo of the original payment
    # @return [String]
    attr_accessor :memo

    # Full amount of the original payment
    # @return [String]
    attr_accessor :original_amount

    # Applied amount of the original payment
    # @return [String]
    attr_accessor :applied_amount

    # Transaction time of the original payment, in ISO 8601 format, i.e.
    # "2019-06-07T17:20:06Z"
    # @return [DateTime]
    attr_accessor :transaction_time

    # A nested data structure detailing the method of payment
    # @return [PaymentMethodNestedData]
    attr_accessor :payment_method

    # The flag that shows whether the original payment was a prepayment or not
    # @return [TrueClass | FalseClass]
    attr_accessor :prepayment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['memo'] = 'memo'
      @_hash['original_amount'] = 'original_amount'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash['transaction_time'] = 'transaction_time'
      @_hash['payment_method'] = 'payment_method'
      @_hash['prepayment'] = 'prepayment'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        original_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(transaction_id = nil,
                   memo = nil,
                   applied_amount = nil,
                   transaction_time = nil,
                   payment_method = nil,
                   prepayment = nil,
                   original_amount = SKIP)
      @transaction_id = transaction_id
      @memo = memo
      @original_amount = original_amount unless original_amount == SKIP
      @applied_amount = applied_amount
      @transaction_time = transaction_time
      @payment_method = payment_method
      @prepayment = prepayment
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : nil
      memo = hash.key?('memo') ? hash['memo'] : nil
      applied_amount =
        hash.key?('applied_amount') ? hash['applied_amount'] : nil
      transaction_time = if hash.key?('transaction_time')
                           (DateTimeHelper.from_rfc3339(hash['transaction_time']) if hash['transaction_time'])
                         end
      payment_method = hash.key?('payment_method') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:RemovePaymentEventDataPaymentMethod), hash['payment_method']
      ) : nil
      prepayment = hash.key?('prepayment') ? hash['prepayment'] : nil
      original_amount =
        hash.key?('original_amount') ? hash['original_amount'] : SKIP

      # Create object from extracted values.
      RemovePaymentEventData.new(transaction_id,
                                 memo,
                                 applied_amount,
                                 transaction_time,
                                 payment_method,
                                 prepayment,
                                 original_amount)
    end

    def to_custom_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end

    # Validates an instance of the object from a given value.
    # @param [RemovePaymentEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.transaction_id,
                                ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.memo,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.applied_amount,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.transaction_time,
                                  ->(val) { val.instance_of? DateTime }) and
            UnionTypeLookUp.get(:RemovePaymentEventDataPaymentMethod)
                           .validate(value.payment_method) and
            APIHelper.valid_type?(value.prepayment,
                                  ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['transaction_id'],
                              ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['memo'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['applied_amount'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['transaction_time'],
                                ->(val) { val.instance_of? String }) and
          UnionTypeLookUp.get(:RemovePaymentEventDataPaymentMethod)
                         .validate(value['payment_method']) and
          APIHelper.valid_type?(value['prepayment'],
                                ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass })
      )
    end
  end
end
