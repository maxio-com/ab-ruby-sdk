# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Returned by [Create Wallet
  # Transaction]($e/Wallet%20Transactions/createWalletTransaction).
  # `wallet_transactions` and `balance` are always present. `requested_amount`,
  # `drained_amount`, and `rejected_amount` are present only when the request's
  # `kind` was `debit`.
  class WalletTransactionResultResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[WalletTransaction]]
    attr_accessor :wallet_transactions

    # `kind: debit` only. The amount that was requested, as a decimal string.
    # @return [String]
    attr_accessor :requested_amount

    # `kind: debit` only. The amount actually drained from the wallet's grants,
    # as a decimal string.
    # @return [String]
    attr_accessor :drained_amount

    # `kind: debit` only, as a decimal string. Under `hard_stop_overflow:
    # discard`, this is the requested amount minus what the wallet could cover
    # (`"0.0"` on a full drain). Always `"0.0"` under `allow_negative`; nothing
    # is rejected, and the balance goes negative instead.
    # @return [String]
    attr_accessor :rejected_amount

    # The wallet's new balance, as a decimal string.
    # @return [String]
    attr_accessor :balance

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wallet_transactions'] = 'wallet_transactions'
      @_hash['requested_amount'] = 'requested_amount'
      @_hash['drained_amount'] = 'drained_amount'
      @_hash['rejected_amount'] = 'rejected_amount'
      @_hash['balance'] = 'balance'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        requested_amount
        drained_amount
        rejected_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(wallet_transactions:, balance:, requested_amount: SKIP,
                   drained_amount: SKIP, rejected_amount: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @wallet_transactions = wallet_transactions
      @requested_amount = requested_amount unless requested_amount == SKIP
      @drained_amount = drained_amount unless drained_amount == SKIP
      @rejected_amount = rejected_amount unless rejected_amount == SKIP
      @balance = balance
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      wallet_transactions = nil
      unless hash['wallet_transactions'].nil?
        wallet_transactions = []
        hash['wallet_transactions'].each do |structure|
          wallet_transactions << (WalletTransaction.from_hash(structure) if structure)
        end
      end

      wallet_transactions = nil unless hash.key?('wallet_transactions')
      balance = hash.key?('balance') ? hash['balance'] : nil
      requested_amount =
        hash.key?('requested_amount') ? hash['requested_amount'] : SKIP
      drained_amount =
        hash.key?('drained_amount') ? hash['drained_amount'] : SKIP
      rejected_amount =
        hash.key?('rejected_amount') ? hash['rejected_amount'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletTransactionResultResponse.new(wallet_transactions: wallet_transactions,
                                          balance: balance,
                                          requested_amount: requested_amount,
                                          drained_amount: drained_amount,
                                          rejected_amount: rejected_amount,
                                          additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_transactions: #{@wallet_transactions}, requested_amount:"\
      " #{@requested_amount}, drained_amount: #{@drained_amount}, rejected_amount:"\
      " #{@rejected_amount}, balance: #{@balance}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_transactions: #{@wallet_transactions.inspect}, requested_amount:"\
      " #{@requested_amount.inspect}, drained_amount: #{@drained_amount.inspect}, rejected_amount:"\
      " #{@rejected_amount.inspect}, balance: #{@balance.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
