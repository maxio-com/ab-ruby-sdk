# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # WalletTransaction1 Model.
  class WalletTransaction1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Determines the direction of the movement. The amount itself is always sent
    # positive.
    # @return [Kind1]
    attr_accessor :kind

    # Always positive; `kind` determines the sign written to the ledger. Encoded
    # as a decimal string with at most 8 fractional digits. Send fractional
    # values as strings: a JSON number with a decimal point is rejected with
    # `422`, because a double-precision float may already have lost precision
    # before the request arrives.
    # @return [Object]
    attr_accessor :amount

    # Always positive; `kind` determines the sign written to the ledger. Encoded
    # as a decimal string with at most 8 fractional digits. Send fractional
    # values as strings: a JSON number with a decimal point is rejected with
    # `422`, because a double-precision float may already have lost precision
    # before the request arrives.
    # @return [String]
    attr_accessor :memo

    # An expiration for the grant this creates. Only accepted with `kind:
    # grant`; sending it with `kind: debit` is rejected. Omit it for an
    # evergreen grant. Accepts either a bare calendar date (`YYYY-MM-DD`),
    # resolved to the end of that day in the site's time zone, or a full
    # timestamp. A calendar day that doesn't exist, such as `2027-02-30`, is
    # rejected with `422` rather than rolled into the next month.
    # @return [String]
    attr_accessor :expires_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['kind'] = 'kind'
      @_hash['amount'] = 'amount'
      @_hash['memo'] = 'memo'
      @_hash['expires_at'] = 'expires_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        memo
        expires_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        memo
        expires_at
      ]
    end

    def initialize(kind:, amount:, memo: SKIP, expires_at: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @kind = kind
      @amount = amount
      @memo = memo unless memo == SKIP
      @expires_at = expires_at unless expires_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      kind = hash.key?('kind') ? hash['kind'] : nil
      amount = hash.key?('amount') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:WalletTransaction1Amount), hash['amount']
      ) : nil
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      expires_at = hash.key?('expires_at') ? hash['expires_at'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletTransaction1.new(kind: kind,
                             amount: amount,
                             memo: memo,
                             expires_at: expires_at,
                             additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [WalletTransaction1 | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.kind,
                                ->(val) { Kind1.validate(val) }) and
            UnionTypeLookUp.get(:WalletTransaction1Amount)
                           .validate(value.amount)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['kind'],
                              ->(val) { Kind1.validate(val) }) and
          UnionTypeLookUp.get(:WalletTransaction1Amount)
                         .validate(value['amount'])
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} kind: #{@kind}, amount: #{@amount}, memo: #{@memo}, expires_at:"\
      " #{@expires_at}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} kind: #{@kind.inspect}, amount: #{@amount.inspect}, memo: #{@memo.inspect},"\
      " expires_at: #{@expires_at.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
