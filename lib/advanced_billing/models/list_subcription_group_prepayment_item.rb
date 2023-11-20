# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListSubcriptionGroupPrepaymentItem Model.
  class ListSubcriptionGroupPrepaymentItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :subscription_group_uid

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :remaining_amount_in_cents

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :details

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :external

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # :- When the `method` specified is `"credit_card_on_file"`, the prepayment
    # amount will be collected using the default credit card payment profile and
    # applied to the prepayment account balance. This is especially useful for
    # manual replenishment of prepaid subscriptions.
    # @return [PrepaymentMethod]
    attr_accessor :payment_type

    # :- When the `method` specified is `"credit_card_on_file"`, the prepayment
    # amount will be collected using the default credit card payment profile and
    # applied to the prepayment account balance. This is especially useful for
    # manual replenishment of prepaid subscriptions.
    # @return [String]
    attr_accessor :created_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['subscription_group_uid'] = 'subscription_group_uid'
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['remaining_amount_in_cents'] = 'remaining_amount_in_cents'
      @_hash['details'] = 'details'
      @_hash['external'] = 'external'
      @_hash['memo'] = 'memo'
      @_hash['payment_type'] = 'payment_type'
      @_hash['created_at'] = 'created_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        subscription_group_uid
        amount_in_cents
        remaining_amount_in_cents
        details
        external
        memo
        payment_type
        created_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP,
                   subscription_group_uid = SKIP,
                   amount_in_cents = SKIP,
                   remaining_amount_in_cents = SKIP,
                   details = SKIP,
                   external = SKIP,
                   memo = SKIP,
                   payment_type = SKIP,
                   created_at = SKIP)
      @id = id unless id == SKIP
      @subscription_group_uid = subscription_group_uid unless subscription_group_uid == SKIP
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
      unless remaining_amount_in_cents == SKIP
        @remaining_amount_in_cents =
          remaining_amount_in_cents
      end
      @details = details unless details == SKIP
      @external = external unless external == SKIP
      @memo = memo unless memo == SKIP
      @payment_type = payment_type unless payment_type == SKIP
      @created_at = created_at unless created_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      subscription_group_uid =
        hash.key?('subscription_group_uid') ? hash['subscription_group_uid'] : SKIP
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : SKIP
      remaining_amount_in_cents =
        hash.key?('remaining_amount_in_cents') ? hash['remaining_amount_in_cents'] : SKIP
      details = hash.key?('details') ? hash['details'] : SKIP
      external = hash.key?('external') ? hash['external'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : SKIP
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP

      # Create object from extracted values.
      ListSubcriptionGroupPrepaymentItem.new(id,
                                             subscription_group_uid,
                                             amount_in_cents,
                                             remaining_amount_in_cents,
                                             details,
                                             external,
                                             memo,
                                             payment_type,
                                             created_at)
    end
  end
end
