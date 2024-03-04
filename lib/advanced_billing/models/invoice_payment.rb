# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # InvoicePayment Model.
  class InvoicePayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :transaction_time

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :original_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :applied_amount

    # TODO: Write general description for this method
    # @return [InvoicePaymentMethod]
    attr_accessor :payment_method

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :transaction_id

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :prepayment

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :gateway_handle

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :gateway_used

    # The transaction ID for the payment as returned from the payment gateway
    # @return [String]
    attr_accessor :gateway_transaction_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_time'] = 'transaction_time'
      @_hash['memo'] = 'memo'
      @_hash['original_amount'] = 'original_amount'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash['payment_method'] = 'payment_method'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['prepayment'] = 'prepayment'
      @_hash['gateway_handle'] = 'gateway_handle'
      @_hash['gateway_used'] = 'gateway_used'
      @_hash['gateway_transaction_id'] = 'gateway_transaction_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        transaction_time
        memo
        original_amount
        applied_amount
        payment_method
        transaction_id
        prepayment
        gateway_handle
        gateway_used
        gateway_transaction_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        gateway_handle
        gateway_transaction_id
      ]
    end

    def initialize(transaction_time = SKIP,
                   memo = SKIP,
                   original_amount = SKIP,
                   applied_amount = SKIP,
                   payment_method = SKIP,
                   transaction_id = SKIP,
                   prepayment = SKIP,
                   gateway_handle = SKIP,
                   gateway_used = SKIP,
                   gateway_transaction_id = SKIP,
                   additional_properties = {})
      @transaction_time = transaction_time unless transaction_time == SKIP
      @memo = memo unless memo == SKIP
      @original_amount = original_amount unless original_amount == SKIP
      @applied_amount = applied_amount unless applied_amount == SKIP
      @payment_method = payment_method unless payment_method == SKIP
      @transaction_id = transaction_id unless transaction_id == SKIP
      @prepayment = prepayment unless prepayment == SKIP
      @gateway_handle = gateway_handle unless gateway_handle == SKIP
      @gateway_used = gateway_used unless gateway_used == SKIP
      @gateway_transaction_id = gateway_transaction_id unless gateway_transaction_id == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_time = if hash.key?('transaction_time')
                           (DateTimeHelper.from_rfc3339(hash['transaction_time']) if hash['transaction_time'])
                         else
                           SKIP
                         end
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      original_amount =
        hash.key?('original_amount') ? hash['original_amount'] : SKIP
      applied_amount =
        hash.key?('applied_amount') ? hash['applied_amount'] : SKIP
      payment_method = InvoicePaymentMethod.from_hash(hash['payment_method']) if
        hash['payment_method']
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : SKIP
      prepayment = hash.key?('prepayment') ? hash['prepayment'] : SKIP
      gateway_handle =
        hash.key?('gateway_handle') ? hash['gateway_handle'] : SKIP
      gateway_used = hash.key?('gateway_used') ? hash['gateway_used'] : SKIP
      gateway_transaction_id =
        hash.key?('gateway_transaction_id') ? hash['gateway_transaction_id'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      InvoicePayment.new(transaction_time,
                         memo,
                         original_amount,
                         applied_amount,
                         payment_method,
                         transaction_id,
                         prepayment,
                         gateway_handle,
                         gateway_used,
                         gateway_transaction_id,
                         hash)
    end

    def to_custom_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end
  end
end
