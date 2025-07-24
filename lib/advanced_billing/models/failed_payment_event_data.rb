# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Example schema for an `failed_payment` event
  class FailedPaymentEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The monetary value of the payment, expressed in cents.
    # @return [Integer]
    attr_accessor :amount_in_cents

    # The monetary value of the payment, expressed in dollars.
    # @return [Integer]
    attr_accessor :applied_amount

    # The memo passed when the payment was created.
    # @return [String]
    attr_accessor :memo

    # The memo passed when the payment was created.
    # @return [InvoicePaymentMethodType]
    attr_accessor :payment_method

    # The transaction ID of the failed payment.
    # @return [Integer]
    attr_accessor :transaction_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash['memo'] = 'memo'
      @_hash['payment_method'] = 'payment_method'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        memo
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        memo
      ]
    end

    def initialize(amount_in_cents:, applied_amount:, payment_method:,
                   transaction_id:, memo: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @amount_in_cents = amount_in_cents
      @applied_amount = applied_amount
      @memo = memo unless memo == SKIP
      @payment_method = payment_method
      @transaction_id = transaction_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : nil
      applied_amount =
        hash.key?('applied_amount') ? hash['applied_amount'] : nil
      payment_method =
        hash.key?('payment_method') ? hash['payment_method'] : nil
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : nil
      memo = hash.key?('memo') ? hash['memo'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      FailedPaymentEventData.new(amount_in_cents: amount_in_cents,
                                 applied_amount: applied_amount,
                                 payment_method: payment_method,
                                 transaction_id: transaction_id,
                                 memo: memo,
                                 additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [FailedPaymentEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.amount_in_cents,
                                ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.applied_amount,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.payment_method,
                                  ->(val) { InvoicePaymentMethodType.validate(val) }) and
            APIHelper.valid_type?(value.transaction_id,
                                  ->(val) { val.instance_of? Integer })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['amount_in_cents'],
                              ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['applied_amount'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['payment_method'],
                                ->(val) { InvoicePaymentMethodType.validate(val) }) and
          APIHelper.valid_type?(value['transaction_id'],
                                ->(val) { val.instance_of? Integer })
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} amount_in_cents: #{@amount_in_cents}, applied_amount: #{@applied_amount},"\
      " memo: #{@memo}, payment_method: #{@payment_method}, transaction_id: #{@transaction_id},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} amount_in_cents: #{@amount_in_cents.inspect}, applied_amount:"\
      " #{@applied_amount.inspect}, memo: #{@memo.inspect}, payment_method:"\
      " #{@payment_method.inspect}, transaction_id: #{@transaction_id.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
