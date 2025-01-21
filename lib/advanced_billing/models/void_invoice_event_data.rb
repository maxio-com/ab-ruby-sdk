# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Example schema for an `void_invoice` event
  class VoidInvoiceEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [CreditNote]
    attr_accessor :credit_note_attributes

    # The memo provided during invoice voiding.
    # @return [String]
    attr_accessor :memo

    # The amount of the void.
    # @return [String]
    attr_accessor :applied_amount

    # The time the refund was applied, in ISO 8601 format, i.e.
    # "2019-06-07T17:20:06Z"
    # @return [DateTime]
    attr_accessor :transaction_time

    # If true, the invoice is an advance invoice.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_advance_invoice

    # The reason for the void.
    # @return [String]
    attr_accessor :reason

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['credit_note_attributes'] = 'credit_note_attributes'
      @_hash['memo'] = 'memo'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash['transaction_time'] = 'transaction_time'
      @_hash['is_advance_invoice'] = 'is_advance_invoice'
      @_hash['reason'] = 'reason'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      %w[
        credit_note_attributes
        memo
        applied_amount
        transaction_time
      ]
    end

    def initialize(credit_note_attributes:, memo:, applied_amount:,
                   transaction_time:, is_advance_invoice:, reason:,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @credit_note_attributes = credit_note_attributes
      @memo = memo
      @applied_amount = applied_amount
      @transaction_time = transaction_time
      @is_advance_invoice = is_advance_invoice
      @reason = reason
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      credit_note_attributes = CreditNote.from_hash(hash['credit_note_attributes']) if
        hash['credit_note_attributes']
      memo = hash.key?('memo') ? hash['memo'] : nil
      applied_amount =
        hash.key?('applied_amount') ? hash['applied_amount'] : nil
      transaction_time = if hash.key?('transaction_time')
                           (DateTimeHelper.from_rfc3339(hash['transaction_time']) if hash['transaction_time'])
                         end
      is_advance_invoice =
        hash.key?('is_advance_invoice') ? hash['is_advance_invoice'] : nil
      reason = hash.key?('reason') ? hash['reason'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      VoidInvoiceEventData.new(credit_note_attributes: credit_note_attributes,
                               memo: memo,
                               applied_amount: applied_amount,
                               transaction_time: transaction_time,
                               is_advance_invoice: is_advance_invoice,
                               reason: reason,
                               additional_properties: additional_properties)
    end

    def to_custom_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end

    # Validates an instance of the object from a given value.
    # @param [VoidInvoiceEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.credit_note_attributes,
                                ->(val) { CreditNote.validate(val) },
                                is_model_hash: true) and
            APIHelper.valid_type?(value.memo,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.applied_amount,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.transaction_time,
                                  ->(val) { val.instance_of? DateTime }) and
            APIHelper.valid_type?(value.is_advance_invoice,
                                  ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass }) and
            APIHelper.valid_type?(value.reason,
                                  ->(val) { val.instance_of? String })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['credit_note_attributes'],
                              ->(val) { CreditNote.validate(val) },
                              is_model_hash: true) and
          APIHelper.valid_type?(value['memo'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['applied_amount'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['transaction_time'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['is_advance_invoice'],
                                ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass }) and
          APIHelper.valid_type?(value['reason'],
                                ->(val) { val.instance_of? String })
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} credit_note_attributes: #{@credit_note_attributes}, memo: #{@memo},"\
      " applied_amount: #{@applied_amount}, transaction_time: #{@transaction_time},"\
      " is_advance_invoice: #{@is_advance_invoice}, reason: #{@reason}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} credit_note_attributes: #{@credit_note_attributes.inspect}, memo:"\
      " #{@memo.inspect}, applied_amount: #{@applied_amount.inspect}, transaction_time:"\
      " #{@transaction_time.inspect}, is_advance_invoice: #{@is_advance_invoice.inspect}, reason:"\
      " #{@reason.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
