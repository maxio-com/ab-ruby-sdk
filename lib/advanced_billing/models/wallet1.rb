# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Wallet1 Model.
  class Wallet1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The subscription that will own the wallet.
    # @return [Integer]
    attr_accessor :subscription_id

    # The [Wallet Product]($e/Wallet%20Products/createWalletProduct) that will
    # denominate the wallet: its numeric id, or its handle prefixed with
    # `handle:` (for example `handle:token-pack`). A bare handle with no prefix
    # is looked up as an id and returns `404`. Immutable once the wallet is
    # created.
    # @return [Object]
    attr_accessor :wallet_product_id

    # (Optional) A merchant-facing label for the wallet. Surrounding spaces are
    # stripped; a blank value is stored as `null`.
    # @return [String]
    attr_accessor :name

    # Defaults to `hard_stop`, currently the only supported value.
    # @return [String]
    attr_accessor :depletion_policy

    # Defaults to `discard`.
    # @return [WalletHardStopOverflow]
    attr_accessor :hard_stop_overflow

    # Pairs the wallet with a merchant-owned metering meter, so its balance
    # factors in live usage (see the wallet resource's `meter` and
    # `metered_through_at` fields). Only a `sum` or `count` meter can be paired.
    # Requires metered wallet consumption to be enabled for the site, checked
    # whenever this or `conversion_rate` is sent: `403` (plain text, not JSON)
    # if it isn't. A meter id that doesn't resolve to a merchant-owned meter on
    # this site, including a system-maintained shadow meter, is `404`. Immutable
    # once the wallet is created.
    # @return [Integer]
    attr_accessor :meter_id

    # How many wallet units one meter unit is worth, as a decimal string with at
    # most 8 fractional digits, greater than `0` and below 10^16. Send
    # fractional values as strings: a JSON number with a decimal point is
    # rejected with `422`, because a double-precision float may already have
    # lost precision before the request arrives. Only meaningful with
    # `meter_id`. Defaults to `"1.0"`. Immutable once the wallet is created.
    # @return [Object]
    attr_accessor :conversion_rate

    # The price point used to price [Create Wallet
    # Purchase]($e/Wallet%20Purchases/createWalletPurchase) calls against this
    # wallet. Must belong to the Wallet Product, and can't be archived or a
    # subscription-specific custom price point. Defaults to the Wallet Product's
    # default price point. Immutable once the wallet is created.
    # @return [Integer]
    attr_accessor :price_point_id

    # (Optional) A free opening balance, not a purchase and not reflected on any
    # invoice. When non-zero, wallet creation also writes an initial-balance
    # grant and a matching `initial_balance` ledger row. Omitted or exactly `0`
    # creates a zero-balance wallet, not an error. Encoded as a decimal string
    # with at most 8 fractional digits, and must be non-negative and below
    # 10^16. Send fractional values as strings: a JSON number with a decimal
    # point is rejected with `422`, because a double-precision float may already
    # have lost precision before the request arrives.
    # @return [Object]
    attr_accessor :initial_balance

    # An expiration for the initial-balance grant. Only accepted together with a
    # non-zero `initial_balance`, and must be in the future. Accepts either a
    # bare calendar date (`YYYY-MM-DD`), resolved to the end of that day in the
    # site's time zone, or a full timestamp. A calendar day that doesn't exist,
    # such as `2027-02-30`, is rejected with `422` rather than rolled into the
    # next month.
    # @return [String]
    attr_accessor :initial_balance_expires_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['wallet_product_id'] = 'wallet_product_id'
      @_hash['name'] = 'name'
      @_hash['depletion_policy'] = 'depletion_policy'
      @_hash['hard_stop_overflow'] = 'hard_stop_overflow'
      @_hash['meter_id'] = 'meter_id'
      @_hash['conversion_rate'] = 'conversion_rate'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['initial_balance'] = 'initial_balance'
      @_hash['initial_balance_expires_at'] = 'initial_balance_expires_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        depletion_policy
        hard_stop_overflow
        meter_id
        conversion_rate
        price_point_id
        initial_balance
        initial_balance_expires_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        name
        initial_balance_expires_at
      ]
    end

    def initialize(subscription_id:, wallet_product_id:, name: SKIP,
                   depletion_policy: SKIP, hard_stop_overflow: SKIP,
                   meter_id: SKIP, conversion_rate: SKIP, price_point_id: SKIP,
                   initial_balance: SKIP, initial_balance_expires_at: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @subscription_id = subscription_id
      @wallet_product_id = wallet_product_id
      @name = name unless name == SKIP
      @depletion_policy = depletion_policy unless depletion_policy == SKIP
      @hard_stop_overflow = hard_stop_overflow unless hard_stop_overflow == SKIP
      @meter_id = meter_id unless meter_id == SKIP
      @conversion_rate = conversion_rate unless conversion_rate == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @initial_balance = initial_balance unless initial_balance == SKIP
      unless initial_balance_expires_at == SKIP
        @initial_balance_expires_at =
          initial_balance_expires_at
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : nil
      wallet_product_id = hash.key?('wallet_product_id') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:Wallet1WalletProductId), hash['wallet_product_id']
      ) : nil
      name = hash.key?('name') ? hash['name'] : SKIP
      depletion_policy =
        hash.key?('depletion_policy') ? hash['depletion_policy'] : SKIP
      hard_stop_overflow =
        hash.key?('hard_stop_overflow') ? hash['hard_stop_overflow'] : SKIP
      meter_id = hash.key?('meter_id') ? hash['meter_id'] : SKIP
      conversion_rate = hash.key?('conversion_rate') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:Wallet1ConversionRate), hash['conversion_rate']
      ) : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      initial_balance = hash.key?('initial_balance') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:Wallet1InitialBalance), hash['initial_balance']
      ) : SKIP
      initial_balance_expires_at =
        hash.key?('initial_balance_expires_at') ? hash['initial_balance_expires_at'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Wallet1.new(subscription_id: subscription_id,
                  wallet_product_id: wallet_product_id,
                  name: name,
                  depletion_policy: depletion_policy,
                  hard_stop_overflow: hard_stop_overflow,
                  meter_id: meter_id,
                  conversion_rate: conversion_rate,
                  price_point_id: price_point_id,
                  initial_balance: initial_balance,
                  initial_balance_expires_at: initial_balance_expires_at,
                  additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [Wallet1 | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.subscription_id,
                                ->(val) { val.instance_of? Integer }) and
            UnionTypeLookUp.get(:Wallet1WalletProductId)
                           .validate(value.wallet_product_id)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['subscription_id'],
                              ->(val) { val.instance_of? Integer }) and
          UnionTypeLookUp.get(:Wallet1WalletProductId)
                         .validate(value['wallet_product_id'])
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} subscription_id: #{@subscription_id}, wallet_product_id:"\
      " #{@wallet_product_id}, name: #{@name}, depletion_policy: #{@depletion_policy},"\
      " hard_stop_overflow: #{@hard_stop_overflow}, meter_id: #{@meter_id}, conversion_rate:"\
      " #{@conversion_rate}, price_point_id: #{@price_point_id}, initial_balance:"\
      " #{@initial_balance}, initial_balance_expires_at: #{@initial_balance_expires_at},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} subscription_id: #{@subscription_id.inspect}, wallet_product_id:"\
      " #{@wallet_product_id.inspect}, name: #{@name.inspect}, depletion_policy:"\
      " #{@depletion_policy.inspect}, hard_stop_overflow: #{@hard_stop_overflow.inspect},"\
      " meter_id: #{@meter_id.inspect}, conversion_rate: #{@conversion_rate.inspect},"\
      " price_point_id: #{@price_point_id.inspect}, initial_balance: #{@initial_balance.inspect},"\
      " initial_balance_expires_at: #{@initial_balance_expires_at.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
