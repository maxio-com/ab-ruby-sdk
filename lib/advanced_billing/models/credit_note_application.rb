# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # CreditNoteApplication Model.
  class CreditNoteApplication < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :transaction_time

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :invoice_uid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :applied_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['transaction_time'] = 'transaction_time'
      @_hash['invoice_uid'] = 'invoice_uid'
      @_hash['memo'] = 'memo'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        transaction_time
        invoice_uid
        memo
        applied_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid: SKIP, transaction_time: SKIP, invoice_uid: SKIP,
                   memo: SKIP, applied_amount: SKIP, additional_properties: {})
      @uid = uid unless uid == SKIP
      @transaction_time = transaction_time unless transaction_time == SKIP
      @invoice_uid = invoice_uid unless invoice_uid == SKIP
      @memo = memo unless memo == SKIP
      @applied_amount = applied_amount unless applied_amount == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      transaction_time = if hash.key?('transaction_time')
                           (DateTimeHelper.from_rfc3339(hash['transaction_time']) if hash['transaction_time'])
                         else
                           SKIP
                         end
      invoice_uid = hash.key?('invoice_uid') ? hash['invoice_uid'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      applied_amount =
        hash.key?('applied_amount') ? hash['applied_amount'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      CreditNoteApplication.new(uid: uid,
                                transaction_time: transaction_time,
                                invoice_uid: invoice_uid,
                                memo: memo,
                                applied_amount: applied_amount,
                                additional_properties: hash)
    end

    def to_custom_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end

    # Validates an instance of the object from a given value.
    # @param [CreditNoteApplication | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
