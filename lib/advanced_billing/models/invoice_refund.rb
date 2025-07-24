# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # InvoiceRefund Model.
  class InvoiceRefund < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :transaction_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :payment_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :original_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :applied_amount

    # The transaction ID for the refund as returned from the payment gateway
    # @return [String]
    attr_accessor :gateway_transaction_id

    # The transaction ID for the refund as returned from the payment gateway
    # @return [String]
    attr_accessor :gateway_used

    # The transaction ID for the refund as returned from the payment gateway
    # @return [String]
    attr_accessor :gateway_handle

    # The transaction ID for the refund as returned from the payment gateway
    # @return [TrueClass | FalseClass]
    attr_accessor :ach_late_reject

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['payment_id'] = 'payment_id'
      @_hash['memo'] = 'memo'
      @_hash['original_amount'] = 'original_amount'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash['gateway_transaction_id'] = 'gateway_transaction_id'
      @_hash['gateway_used'] = 'gateway_used'
      @_hash['gateway_handle'] = 'gateway_handle'
      @_hash['ach_late_reject'] = 'ach_late_reject'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        transaction_id
        payment_id
        memo
        original_amount
        applied_amount
        gateway_transaction_id
        gateway_used
        gateway_handle
        ach_late_reject
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        gateway_transaction_id
        gateway_handle
        ach_late_reject
      ]
    end

    def initialize(transaction_id: SKIP, payment_id: SKIP, memo: SKIP,
                   original_amount: SKIP, applied_amount: SKIP,
                   gateway_transaction_id: SKIP, gateway_used: SKIP,
                   gateway_handle: SKIP, ach_late_reject: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @transaction_id = transaction_id unless transaction_id == SKIP
      @payment_id = payment_id unless payment_id == SKIP
      @memo = memo unless memo == SKIP
      @original_amount = original_amount unless original_amount == SKIP
      @applied_amount = applied_amount unless applied_amount == SKIP
      @gateway_transaction_id = gateway_transaction_id unless gateway_transaction_id == SKIP
      @gateway_used = gateway_used unless gateway_used == SKIP
      @gateway_handle = gateway_handle unless gateway_handle == SKIP
      @ach_late_reject = ach_late_reject unless ach_late_reject == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : SKIP
      payment_id = hash.key?('payment_id') ? hash['payment_id'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      original_amount =
        hash.key?('original_amount') ? hash['original_amount'] : SKIP
      applied_amount =
        hash.key?('applied_amount') ? hash['applied_amount'] : SKIP
      gateway_transaction_id =
        hash.key?('gateway_transaction_id') ? hash['gateway_transaction_id'] : SKIP
      gateway_used = hash.key?('gateway_used') ? hash['gateway_used'] : SKIP
      gateway_handle =
        hash.key?('gateway_handle') ? hash['gateway_handle'] : SKIP
      ach_late_reject =
        hash.key?('ach_late_reject') ? hash['ach_late_reject'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoiceRefund.new(transaction_id: transaction_id,
                        payment_id: payment_id,
                        memo: memo,
                        original_amount: original_amount,
                        applied_amount: applied_amount,
                        gateway_transaction_id: gateway_transaction_id,
                        gateway_used: gateway_used,
                        gateway_handle: gateway_handle,
                        ach_late_reject: ach_late_reject,
                        additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceRefund | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} transaction_id: #{@transaction_id}, payment_id: #{@payment_id}, memo:"\
      " #{@memo}, original_amount: #{@original_amount}, applied_amount: #{@applied_amount},"\
      " gateway_transaction_id: #{@gateway_transaction_id}, gateway_used: #{@gateway_used},"\
      " gateway_handle: #{@gateway_handle}, ach_late_reject: #{@ach_late_reject},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} transaction_id: #{@transaction_id.inspect}, payment_id:"\
      " #{@payment_id.inspect}, memo: #{@memo.inspect}, original_amount:"\
      " #{@original_amount.inspect}, applied_amount: #{@applied_amount.inspect},"\
      " gateway_transaction_id: #{@gateway_transaction_id.inspect}, gateway_used:"\
      " #{@gateway_used.inspect}, gateway_handle: #{@gateway_handle.inspect}, ach_late_reject:"\
      " #{@ach_late_reject.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
