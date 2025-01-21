# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Example schema for an `apply_payment` event
  class ApplyPaymentEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [InvoiceConsolidationLevel]
    attr_accessor :consolidation_level

    # The payment memo
    # @return [String]
    attr_accessor :memo

    # The full, original amount of the payment transaction as a string in full
    # units. Incoming payments can be split amongst several invoices, which will
    # result in a `applied_amount` less than the `original_amount`. Example: A
    # $100.99 payment, of which $40.11 is applied to this invoice, will have an
    # `original_amount` of `"100.99"`.
    # @return [String]
    attr_accessor :original_amount

    # The amount of the payment applied to this invoice. Incoming payments can
    # be split amongst several invoices, which will result in a `applied_amount`
    # less than the `original_amount`. Example: A $100.99 payment, of which
    # $40.11 is applied to this invoice, will have an `applied_amount` of
    # `"40.11"`.
    # @return [String]
    attr_accessor :applied_amount

    # The time the payment was applied, in ISO 8601 format, i.e.
    # "2019-06-07T17:20:06Z"
    # @return [DateTime]
    attr_accessor :transaction_time

    # A nested data structure detailing the method of payment
    # @return [Object]
    attr_accessor :payment_method

    # The Chargify id of the original payment
    # @return [Integer]
    attr_accessor :transaction_id

    # The Chargify id of the original payment
    # @return [Integer]
    attr_accessor :parent_invoice_number

    # The Chargify id of the original payment
    # @return [String]
    attr_accessor :remaining_prepayment_amount

    # The Chargify id of the original payment
    # @return [TrueClass | FalseClass]
    attr_accessor :prepayment

    # The Chargify id of the original payment
    # @return [TrueClass | FalseClass]
    attr_accessor :external

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['consolidation_level'] = 'consolidation_level'
      @_hash['memo'] = 'memo'
      @_hash['original_amount'] = 'original_amount'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash['transaction_time'] = 'transaction_time'
      @_hash['payment_method'] = 'payment_method'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['parent_invoice_number'] = 'parent_invoice_number'
      @_hash['remaining_prepayment_amount'] = 'remaining_prepayment_amount'
      @_hash['prepayment'] = 'prepayment'
      @_hash['external'] = 'external'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        transaction_id
        parent_invoice_number
        remaining_prepayment_amount
        prepayment
        external
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        parent_invoice_number
        remaining_prepayment_amount
      ]
    end

    def initialize(consolidation_level:, memo:, original_amount:,
                   applied_amount:, transaction_time:, payment_method:,
                   transaction_id: SKIP, parent_invoice_number: SKIP,
                   remaining_prepayment_amount: SKIP, prepayment: SKIP,
                   external: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @consolidation_level = consolidation_level
      @memo = memo
      @original_amount = original_amount
      @applied_amount = applied_amount
      @transaction_time = transaction_time
      @payment_method = payment_method
      @transaction_id = transaction_id unless transaction_id == SKIP
      @parent_invoice_number = parent_invoice_number unless parent_invoice_number == SKIP
      unless remaining_prepayment_amount == SKIP
        @remaining_prepayment_amount =
          remaining_prepayment_amount
      end
      @prepayment = prepayment unless prepayment == SKIP
      @external = external unless external == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      consolidation_level =
        hash.key?('consolidation_level') ? hash['consolidation_level'] : nil
      memo = hash.key?('memo') ? hash['memo'] : nil
      original_amount =
        hash.key?('original_amount') ? hash['original_amount'] : nil
      applied_amount =
        hash.key?('applied_amount') ? hash['applied_amount'] : nil
      transaction_time = if hash.key?('transaction_time')
                           (DateTimeHelper.from_rfc3339(hash['transaction_time']) if hash['transaction_time'])
                         end
      payment_method = hash.key?('payment_method') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:InvoiceEventPayment), hash['payment_method']
      ) : nil
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : SKIP
      parent_invoice_number =
        hash.key?('parent_invoice_number') ? hash['parent_invoice_number'] : SKIP
      remaining_prepayment_amount =
        hash.key?('remaining_prepayment_amount') ? hash['remaining_prepayment_amount'] : SKIP
      prepayment = hash.key?('prepayment') ? hash['prepayment'] : SKIP
      external = hash.key?('external') ? hash['external'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ApplyPaymentEventData.new(consolidation_level: consolidation_level,
                                memo: memo,
                                original_amount: original_amount,
                                applied_amount: applied_amount,
                                transaction_time: transaction_time,
                                payment_method: payment_method,
                                transaction_id: transaction_id,
                                parent_invoice_number: parent_invoice_number,
                                remaining_prepayment_amount: remaining_prepayment_amount,
                                prepayment: prepayment,
                                external: external,
                                additional_properties: additional_properties)
    end

    def to_custom_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end

    # Validates an instance of the object from a given value.
    # @param [ApplyPaymentEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.consolidation_level,
                                ->(val) { InvoiceConsolidationLevel.validate(val) }) and
            APIHelper.valid_type?(value.memo,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.original_amount,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.applied_amount,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.transaction_time,
                                  ->(val) { val.instance_of? DateTime }) and
            UnionTypeLookUp.get(:InvoiceEventPayment)
                           .validate(value.payment_method)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['consolidation_level'],
                              ->(val) { InvoiceConsolidationLevel.validate(val) }) and
          APIHelper.valid_type?(value['memo'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['original_amount'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['applied_amount'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['transaction_time'],
                                ->(val) { val.instance_of? String }) and
          UnionTypeLookUp.get(:InvoiceEventPayment)
                         .validate(value['payment_method'])
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} consolidation_level: #{@consolidation_level}, memo: #{@memo},"\
      " original_amount: #{@original_amount}, applied_amount: #{@applied_amount},"\
      " transaction_time: #{@transaction_time}, payment_method: #{@payment_method},"\
      " transaction_id: #{@transaction_id}, parent_invoice_number: #{@parent_invoice_number},"\
      " remaining_prepayment_amount: #{@remaining_prepayment_amount}, prepayment: #{@prepayment},"\
      " external: #{@external}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} consolidation_level: #{@consolidation_level.inspect}, memo:"\
      " #{@memo.inspect}, original_amount: #{@original_amount.inspect}, applied_amount:"\
      " #{@applied_amount.inspect}, transaction_time: #{@transaction_time.inspect},"\
      " payment_method: #{@payment_method.inspect}, transaction_id: #{@transaction_id.inspect},"\
      " parent_invoice_number: #{@parent_invoice_number.inspect}, remaining_prepayment_amount:"\
      " #{@remaining_prepayment_amount.inspect}, prepayment: #{@prepayment.inspect}, external:"\
      " #{@external.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
