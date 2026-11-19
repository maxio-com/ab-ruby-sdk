# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Adjustment Model.
  class Adjustment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Signed: positive adds units to the grant, negative removes them. Bounded
    # below by the grant's `posted_remaining` (a correction can't drive it
    # negative) and above by the grant's `original` (a correction can't credit
    # past what was originally granted). An out-of-bounds value is rejected
    # rather than clamped. Zero is rejected. Without a `grant_id` (an overdraft
    # correction), the amount must be positive, can't exceed the usage the
    # overdraft entry still records, and can't exceed the overdraft the wallet
    # still owes. Encoded as a decimal string with at most 8 fractional digits.
    # Send fractional values as strings: a JSON number with a decimal point is
    # rejected with `422`, because a double-precision float may already have
    # lost precision before the request arrives.
    # @return [Object]
    attr_accessor :amount

    # Required. Lands on the resulting ledger row's `memo`.
    # @return [String]
    attr_accessor :reason

    # The grant to correct. Must belong to this wallet. Required unless
    # `source_transaction_id` names an overdraft entry (a `debit` with no
    # `grant_id`, written when an `allow_negative` wallet consumes past its
    # grants). For an overdraft entry, omit it: sending one returns `422`, and
    # the correction credits the wallet's outstanding overdraft instead of any
    # grant.
    # @return [Integer]
    attr_accessor :grant_id

    # (Optional) The `debit` row this correction is fixing. Must belong to this
    # wallet, and must name a row of kind `debit`; grant and adjustment rows are
    # append-only history, corrected by posting a further adjustment rather than
    # by pointing at them. For a grant-attributed debit, it's recorded on the
    # resulting ledger row for audit only: it does not change how `amount` is
    # applied, and more than one adjustment may name the same row. For an
    # overdraft entry, it decides the path: omit `grant_id`, and the correction
    # is credit-only, bounded by the usage the entry still records and by the
    # overdraft the wallet still owes.
    # @return [Integer]
    attr_accessor :source_transaction_id

    # (Optional) An optimistic-concurrency check for a caller whose `amount` was
    # derived from the grant's own remainder. Send the grant's
    # `posted_remaining`, not its `remaining`: on a metered wallet read through
    # [Read Wallet]($e/Wallets/readWallet), `remaining` also subtracts usage not
    # yet posted, so it can differ from what the adjustment checks. If given and
    # the grant's current `posted_remaining` no longer matches, the request is
    # rejected with `409` and nothing is written. Compared numerically, so
    # `"100"` and `"100.00000000"` both match a `posted_remaining` of `100`.
    # Omit the field entirely to skip the check; sending it as an empty string
    # is treated as a malformed value (`422`), not as an omission.
    # @return [String]
    attr_accessor :expected_remaining

    # (Optional) An optimistic-concurrency check for a caller whose `amount` was
    # derived from a usage entry, sent together with `source_transaction_id`:
    # the entry's `source_corrections_total` as the caller last read it (`"0"`
    # if none). If the sum the server computes no longer matches, the request is
    # rejected with `409` and nothing is written. This is what catches a
    # correction posted between that read and this request. Ignored unless
    # `source_transaction_id` is also given.
    # @return [String]
    attr_accessor :expected_source_corrections

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['reason'] = 'reason'
      @_hash['grant_id'] = 'grant_id'
      @_hash['source_transaction_id'] = 'source_transaction_id'
      @_hash['expected_remaining'] = 'expected_remaining'
      @_hash['expected_source_corrections'] = 'expected_source_corrections'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        grant_id
        source_transaction_id
        expected_remaining
        expected_source_corrections
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        grant_id
        source_transaction_id
        expected_remaining
        expected_source_corrections
      ]
    end

    def initialize(amount:, reason:, grant_id: SKIP,
                   source_transaction_id: SKIP, expected_remaining: SKIP,
                   expected_source_corrections: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @amount = amount
      @reason = reason
      @grant_id = grant_id unless grant_id == SKIP
      @source_transaction_id = source_transaction_id unless source_transaction_id == SKIP
      @expected_remaining = expected_remaining unless expected_remaining == SKIP
      unless expected_source_corrections == SKIP
        @expected_source_corrections =
          expected_source_corrections
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:AdjustmentAmount), hash['amount']
      ) : nil
      reason = hash.key?('reason') ? hash['reason'] : nil
      grant_id = hash.key?('grant_id') ? hash['grant_id'] : SKIP
      source_transaction_id =
        hash.key?('source_transaction_id') ? hash['source_transaction_id'] : SKIP
      expected_remaining =
        hash.key?('expected_remaining') ? hash['expected_remaining'] : SKIP
      expected_source_corrections =
        hash.key?('expected_source_corrections') ? hash['expected_source_corrections'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Adjustment.new(amount: amount,
                     reason: reason,
                     grant_id: grant_id,
                     source_transaction_id: source_transaction_id,
                     expected_remaining: expected_remaining,
                     expected_source_corrections: expected_source_corrections,
                     additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [Adjustment | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          UnionTypeLookUp.get(:AdjustmentAmount)
                         .validate(value.amount) and
            APIHelper.valid_type?(value.reason,
                                  ->(val) { val.instance_of? String })
        )
      end

      return false unless value.instance_of? Hash

      (
        UnionTypeLookUp.get(:AdjustmentAmount)
                       .validate(value['amount']) and
          APIHelper.valid_type?(value['reason'],
                                ->(val) { val.instance_of? String })
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount}, reason: #{@reason}, grant_id: #{@grant_id},"\
      " source_transaction_id: #{@source_transaction_id}, expected_remaining:"\
      " #{@expected_remaining}, expected_source_corrections: #{@expected_source_corrections},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount.inspect}, reason: #{@reason.inspect}, grant_id:"\
      " #{@grant_id.inspect}, source_transaction_id: #{@source_transaction_id.inspect},"\
      " expected_remaining: #{@expected_remaining.inspect}, expected_source_corrections:"\
      " #{@expected_source_corrections.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
