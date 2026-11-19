# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # One append-only row on the wallet's ledger. Always appears bare inside a
  # `wallet_transactions` array, never wrapped in its own key.
  class WalletTransaction < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Advanced Billing id of the ledger row.
    # @return [Integer]
    attr_accessor :id

    # The Advanced Billing id of the ledger row.
    # @return [Integer]
    attr_accessor :wallet_id

    # The kind of ledger row. Known values: `grant`, `debit`, `adjustment`,
    # `initial_balance`, and `expiration`. More kinds are expected over time, so
    # treat this as an open string and don't fail on one you don't recognize.
    # Only `grant` and `debit` are accepted on [Create Wallet
    # Transaction]($e/Wallet%20Transactions/createWalletTransaction).
    # `adjustment` rows are written by [Create Wallet
    # Adjustment]($e/Wallet%20Adjustments/createWalletAdjustment),
    # `initial_balance` rows only by a seeded [Create
    # Wallet]($e/Wallets/createWallet), and `expiration` rows only by the
    # automatic expiry sweep that writes off an unconsumed grant once its
    # `expires_at` passes.
    # @return [String]
    attr_accessor :kind

    # A decimal string, **signed** on this resource. Non-negative for grants,
    # negative for debits and expirations, either sign for adjustments. A grant
    # row written after an overdraft repayment carries only what was left after
    # the repayment (possibly `"0.0"`), not the grant's `original`.
    # @return [String]
    attr_accessor :amount

    # The grant this row is attributed to. `null` for an overdraft row (a `kind:
    # debit` row draining the below-zero portion of a balance, attributed to no
    # grant), for an overdraft-repayment row (the `kind: grant` row that pays an
    # existing negative balance back to zero, written before any remainder
    # becomes a new grant), and for an overdraft correction (a `kind:
    # adjustment` row posted against an overdraft entry, which credits no
    # grant).
    # @return [Integer]
    attr_accessor :grant_id

    # For an `adjustment` row posted against a specific usage entry, the id of
    # the `debit` row it corrects. `null` for every other kind, and for
    # adjustments made against a grant's balance directly.
    # @return [Integer]
    attr_accessor :source_transaction_id

    # For a `debit` row only, the signed sum (as a decimal string) of every
    # adjustment posted against it so far (`"0.0"` when none). `null` for every
    # other kind. The row's own `amount` is never rewritten, so a caller
    # deriving the entry's corrected quantity nets this out of `amount`, and
    # sends this value back as `expected_source_corrections` on a further
    # correction.
    # @return [String]
    attr_accessor :source_corrections_total

    # The wallet's posted balance immediately after this row was applied, as a
    # decimal string. Compare it with the wallet's `posted_balance`, not its
    # `balance`.
    # @return [String]
    attr_accessor :balance_after

    # For a row that closed a metered usage window (an hourly close, a
    # depletion, or an expiry write-off), the start of that window. `null` on
    # every other row.
    # @return [DateTime]
    attr_accessor :metered_from_at

    # The end of the usage window this row closed. `null` on every other row.
    # @return [DateTime]
    attr_accessor :metered_through_at

    # The meter-to-wallet-unit conversion rate applied to compute this row's
    # `amount`, as a decimal string. `null` on every other row.
    # @return [String]
    attr_accessor :conversion_rate_applied

    # The uid of the invoice behind a purchase's rows: the grant-creating row
    # and, when the purchase repaid an overdraft, the repayment row. `null` on
    # every other row.
    # @return [String]
    attr_accessor :invoice_uid

    # Free-text note. For an `adjustment` row, carries the required `reason`.
    # @return [String]
    attr_accessor :memo

    # Free-text note. For an `adjustment` row, carries the required `reason`.
    # @return [DateTime]
    attr_accessor :created_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['wallet_id'] = 'wallet_id'
      @_hash['kind'] = 'kind'
      @_hash['amount'] = 'amount'
      @_hash['grant_id'] = 'grant_id'
      @_hash['source_transaction_id'] = 'source_transaction_id'
      @_hash['source_corrections_total'] = 'source_corrections_total'
      @_hash['balance_after'] = 'balance_after'
      @_hash['metered_from_at'] = 'metered_from_at'
      @_hash['metered_through_at'] = 'metered_through_at'
      @_hash['conversion_rate_applied'] = 'conversion_rate_applied'
      @_hash['invoice_uid'] = 'invoice_uid'
      @_hash['memo'] = 'memo'
      @_hash['created_at'] = 'created_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        wallet_id
        kind
        amount
        grant_id
        source_transaction_id
        source_corrections_total
        balance_after
        metered_from_at
        metered_through_at
        conversion_rate_applied
        invoice_uid
        memo
        created_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        grant_id
        source_transaction_id
        source_corrections_total
        metered_from_at
        metered_through_at
        conversion_rate_applied
        invoice_uid
        memo
      ]
    end

    def initialize(id: SKIP, wallet_id: SKIP, kind: SKIP, amount: SKIP,
                   grant_id: SKIP, source_transaction_id: SKIP,
                   source_corrections_total: SKIP, balance_after: SKIP,
                   metered_from_at: SKIP, metered_through_at: SKIP,
                   conversion_rate_applied: SKIP, invoice_uid: SKIP, memo: SKIP,
                   created_at: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @wallet_id = wallet_id unless wallet_id == SKIP
      @kind = kind unless kind == SKIP
      @amount = amount unless amount == SKIP
      @grant_id = grant_id unless grant_id == SKIP
      @source_transaction_id = source_transaction_id unless source_transaction_id == SKIP
      @source_corrections_total = source_corrections_total unless source_corrections_total == SKIP
      @balance_after = balance_after unless balance_after == SKIP
      @metered_from_at = metered_from_at unless metered_from_at == SKIP
      @metered_through_at = metered_through_at unless metered_through_at == SKIP
      @conversion_rate_applied = conversion_rate_applied unless conversion_rate_applied == SKIP
      @invoice_uid = invoice_uid unless invoice_uid == SKIP
      @memo = memo unless memo == SKIP
      @created_at = created_at unless created_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      wallet_id = hash.key?('wallet_id') ? hash['wallet_id'] : SKIP
      kind = hash.key?('kind') ? hash['kind'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      grant_id = hash.key?('grant_id') ? hash['grant_id'] : SKIP
      source_transaction_id =
        hash.key?('source_transaction_id') ? hash['source_transaction_id'] : SKIP
      source_corrections_total =
        hash.key?('source_corrections_total') ? hash['source_corrections_total'] : SKIP
      balance_after = hash.key?('balance_after') ? hash['balance_after'] : SKIP
      metered_from_at = if hash.key?('metered_from_at')
                          (DateTimeHelper.from_rfc3339(hash['metered_from_at']) if hash['metered_from_at'])
                        else
                          SKIP
                        end
      metered_through_at = if hash.key?('metered_through_at')
                             (DateTimeHelper.from_rfc3339(hash['metered_through_at']) if hash['metered_through_at'])
                           else
                             SKIP
                           end
      conversion_rate_applied =
        hash.key?('conversion_rate_applied') ? hash['conversion_rate_applied'] : SKIP
      invoice_uid = hash.key?('invoice_uid') ? hash['invoice_uid'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletTransaction.new(id: id,
                            wallet_id: wallet_id,
                            kind: kind,
                            amount: amount,
                            grant_id: grant_id,
                            source_transaction_id: source_transaction_id,
                            source_corrections_total: source_corrections_total,
                            balance_after: balance_after,
                            metered_from_at: metered_from_at,
                            metered_through_at: metered_through_at,
                            conversion_rate_applied: conversion_rate_applied,
                            invoice_uid: invoice_uid,
                            memo: memo,
                            created_at: created_at,
                            additional_properties: additional_properties)
    end

    def to_custom_metered_from_at
      DateTimeHelper.to_rfc3339(metered_from_at)
    end

    def to_custom_metered_through_at
      DateTimeHelper.to_rfc3339(metered_through_at)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, wallet_id: #{@wallet_id}, kind: #{@kind}, amount: #{@amount},"\
      " grant_id: #{@grant_id}, source_transaction_id: #{@source_transaction_id},"\
      " source_corrections_total: #{@source_corrections_total}, balance_after: #{@balance_after},"\
      " metered_from_at: #{@metered_from_at}, metered_through_at: #{@metered_through_at},"\
      " conversion_rate_applied: #{@conversion_rate_applied}, invoice_uid: #{@invoice_uid}, memo:"\
      " #{@memo}, created_at: #{@created_at}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, wallet_id: #{@wallet_id.inspect}, kind:"\
      " #{@kind.inspect}, amount: #{@amount.inspect}, grant_id: #{@grant_id.inspect},"\
      " source_transaction_id: #{@source_transaction_id.inspect}, source_corrections_total:"\
      " #{@source_corrections_total.inspect}, balance_after: #{@balance_after.inspect},"\
      " metered_from_at: #{@metered_from_at.inspect}, metered_through_at:"\
      " #{@metered_through_at.inspect}, conversion_rate_applied:"\
      " #{@conversion_rate_applied.inspect}, invoice_uid: #{@invoice_uid.inspect}, memo:"\
      " #{@memo.inspect}, created_at: #{@created_at.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
