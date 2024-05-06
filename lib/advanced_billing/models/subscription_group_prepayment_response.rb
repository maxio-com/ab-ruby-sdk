# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionGroupPrepaymentResponse Model.
  class SubscriptionGroupPrepaymentResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # The amount in cents of the entry.
    # @return [Integer]
    attr_accessor :amount_in_cents

    # The ending balance in cents of the account.
    # @return [Integer]
    attr_accessor :ending_balance_in_cents

    # The type of entry
    # @return [ServiceCreditType]
    attr_accessor :entry_type

    # A memo attached to the entry.
    # @return [String]
    attr_accessor :memo

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['ending_balance_in_cents'] = 'ending_balance_in_cents'
      @_hash['entry_type'] = 'entry_type'
      @_hash['memo'] = 'memo'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        amount_in_cents
        ending_balance_in_cents
        entry_type
        memo
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        memo
      ]
    end

    def initialize(id = SKIP,
                   amount_in_cents = SKIP,
                   ending_balance_in_cents = SKIP,
                   entry_type = SKIP,
                   memo = SKIP,
                   additional_properties = {})
      @id = id unless id == SKIP
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
      @ending_balance_in_cents = ending_balance_in_cents unless ending_balance_in_cents == SKIP
      @entry_type = entry_type unless entry_type == SKIP
      @memo = memo unless memo == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : SKIP
      ending_balance_in_cents =
        hash.key?('ending_balance_in_cents') ? hash['ending_balance_in_cents'] : SKIP
      entry_type = hash.key?('entry_type') ? hash['entry_type'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      SubscriptionGroupPrepaymentResponse.new(id,
                                              amount_in_cents,
                                              ending_balance_in_cents,
                                              entry_type,
                                              memo,
                                              hash)
    end
  end
end
