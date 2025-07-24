# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # InvoiceDebit Model.
  class InvoiceDebit < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :debit_note_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :debit_note_uid

    # The role of the debit note.
    # @return [DebitNoteRole]
    attr_accessor :role

    # The role of the debit note.
    # @return [DateTime]
    attr_accessor :transaction_time

    # The role of the debit note.
    # @return [String]
    attr_accessor :memo

    # The role of the debit note.
    # @return [String]
    attr_accessor :original_amount

    # The role of the debit note.
    # @return [String]
    attr_accessor :applied_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['debit_note_number'] = 'debit_note_number'
      @_hash['debit_note_uid'] = 'debit_note_uid'
      @_hash['role'] = 'role'
      @_hash['transaction_time'] = 'transaction_time'
      @_hash['memo'] = 'memo'
      @_hash['original_amount'] = 'original_amount'
      @_hash['applied_amount'] = 'applied_amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        debit_note_number
        debit_note_uid
        role
        transaction_time
        memo
        original_amount
        applied_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid: SKIP, debit_note_number: SKIP, debit_note_uid: SKIP,
                   role: SKIP, transaction_time: SKIP, memo: SKIP,
                   original_amount: SKIP, applied_amount: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @uid = uid unless uid == SKIP
      @debit_note_number = debit_note_number unless debit_note_number == SKIP
      @debit_note_uid = debit_note_uid unless debit_note_uid == SKIP
      @role = role unless role == SKIP
      @transaction_time = transaction_time unless transaction_time == SKIP
      @memo = memo unless memo == SKIP
      @original_amount = original_amount unless original_amount == SKIP
      @applied_amount = applied_amount unless applied_amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      debit_note_number =
        hash.key?('debit_note_number') ? hash['debit_note_number'] : SKIP
      debit_note_uid =
        hash.key?('debit_note_uid') ? hash['debit_note_uid'] : SKIP
      role = hash.key?('role') ? hash['role'] : SKIP
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

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoiceDebit.new(uid: uid,
                       debit_note_number: debit_note_number,
                       debit_note_uid: debit_note_uid,
                       role: role,
                       transaction_time: transaction_time,
                       memo: memo,
                       original_amount: original_amount,
                       applied_amount: applied_amount,
                       additional_properties: additional_properties)
    end

    def to_custom_transaction_time
      DateTimeHelper.to_rfc3339(transaction_time)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceDebit | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} uid: #{@uid}, debit_note_number: #{@debit_note_number}, debit_note_uid:"\
      " #{@debit_note_uid}, role: #{@role}, transaction_time: #{@transaction_time}, memo:"\
      " #{@memo}, original_amount: #{@original_amount}, applied_amount: #{@applied_amount},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} uid: #{@uid.inspect}, debit_note_number: #{@debit_note_number.inspect},"\
      " debit_note_uid: #{@debit_note_uid.inspect}, role: #{@role.inspect}, transaction_time:"\
      " #{@transaction_time.inspect}, memo: #{@memo.inspect}, original_amount:"\
      " #{@original_amount.inspect}, applied_amount: #{@applied_amount.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
