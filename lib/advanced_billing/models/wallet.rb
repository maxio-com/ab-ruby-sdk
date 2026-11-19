# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # A balance, denominated in the unit of a Wallet Product, owned by a
  # subscription. Grants and recurring funding schedules are embedded so a
  # single read shows the full balance breakdown.
  class Wallet < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Advanced Billing id of the wallet.
    # @return [Integer]
    attr_accessor :id

    # The polymorphic owner type. `subscription` is the only value currently
    # supported.
    # @return [OwnerType]
    attr_accessor :owner_type

    # The id of the owning subscription.
    # @return [Integer]
    attr_accessor :owner_id

    # (Optional) A merchant-facing label for the wallet, set on create and
    # changeable with [Update Wallet]($e/Wallets/updateWallet). Surrounding
    # spaces are stripped; a blank value is stored as `null`.
    # @return [String]
    attr_accessor :name

    # The id of the [Wallet Product]($e/Wallet%20Products/createWalletProduct)
    # that denominates the wallet. Immutable for the life of the wallet.
    # @return [Integer]
    attr_accessor :wallet_product_id

    # The name of the Wallet Product that denominates the wallet.
    # @return [String]
    attr_accessor :wallet_product_name

    # The billing product's unit name, immutable for the life of the wallet.
    # @return [String]
    attr_accessor :unit

    # The price point that priced this wallet's
    # [purchases]($e/Wallet%20Purchases/createWalletPurchase), set on create and
    # immutable afterward. Defaults to the Wallet Product's default price point;
    # `null` if the Wallet Product has none and none was given on create.
    # @return [Integer]
    attr_accessor :price_point_id

    # What the wallet can spend now, encoded as a decimal string to avoid
    # floating-point precision loss. This is the number to enforce against. For
    # a metered wallet, it includes usage not yet posted to the ledger, through
    # `metered_through_at`, but only in the response from [Read
    # Wallet]($e/Wallets/readWallet); every other response (list, create,
    # update, archive) reports the balance as of the last ledger write, equal to
    # `posted_balance`, even for a metered wallet. The grants' `remaining`
    # follow this figure, so they add up to it whenever it is zero or more.
    # @return [String]
    attr_accessor :balance

    # The balance from written ledger entries alone: grants funded, minus debits
    # written to the ledger, as a decimal string. Always present, also for a
    # wallet with no meter. It equals `balance` wherever no live metered balance
    # is computed: list, create, update, and archive responses, an unlinked or
    # archived wallet, and a read where `metered_stale` is `true`. Only an
    # active, metered wallet read through [Read Wallet]($e/Wallets/readWallet),
    # with `metered_stale` not `true`, can have a `balance` below its
    # `posted_balance`. It stays exact when `metered_stale` is `true`. Reconcile
    # the transactions list (`balance_after`) against this figure, not against
    # `balance`.
    # @return [String]
    attr_accessor :posted_balance

    # The metering meter this wallet is paired with, or `null` for a wallet with
    # no meter. Set on create and immutable afterward.
    # @return [Meter]
    attr_accessor :meter

    # The point up to which live meter usage has been factored into `balance`.
    # Populated only in the response from [Read Wallet]($e/Wallets/readWallet),
    # for an active, metered wallet on a site with metered consumption enabled;
    # `null` everywhere else, including list, create, update, and archive
    # responses for the same wallet.
    # @return [DateTime]
    attr_accessor :metered_through_at

    # How many seconds to wait before re-reading `balance` to see usage past
    # `metered_through_at`. Same availability as `metered_through_at`.
    # @return [Integer]
    attr_accessor :metered_recheck_after_seconds

    # `true` when live usage could not be read fresh and `balance` reflects an
    # earlier snapshot. Same availability as `metered_through_at`.
    # @return [TrueClass | FalseClass]
    attr_accessor :metered_stale

    # `true` when live usage could not be read fresh and `balance` reflects an
    # earlier snapshot. Same availability as `metered_through_at`.
    # @return [WalletStatus]
    attr_accessor :status

    # What happens when a debit would take the wallet below zero. Known values:
    # `hard_stop` (the only value you can set today). More values are expected
    # over time, so treat this as an open string and don't fail on one you don't
    # recognize. At the zero boundary, `hard_stop` behaves as set by
    # `hard_stop_overflow`.
    # @return [String]
    attr_accessor :depletion_policy

    # Behavior at the hard-stop boundary. `discard` drains the wallet to zero
    # and rejects the excess (the default). `allow_negative` deducts the full
    # amount, letting the balance go negative. The excess past the wallet's
    # grants is booked as an overdraft ledger row with `grant_id` set to `null`.
    # @return [WalletHardStopOverflow]
    attr_accessor :hard_stop_overflow

    # How the wallet came to exist. `manual` for a wallet created directly with
    # [Create Wallet]($e/Wallets/createWallet). `feature` for a wallet
    # auto-provisioned because a subscription resolved a usage-limit entitlement
    # whose Feature has `wallet_behavior` configured.
    # @return [WalletOrigin]
    attr_accessor :origin

    # The key of the Feature this wallet was provisioned for, when `origin` is
    # `feature`. `null` for a `manual` wallet.
    # @return [String]
    attr_accessor :feature_key

    # Every grant on the wallet, including ones already spent or expired, in
    # drain order (the order debits would consume the still-open ones in): the
    # soonest-expiring grant first, evergreen grants last.
    # @return [Array[WalletGrant]]
    attr_accessor :grants

    # The wallet's automatic funding schedules, if any. Empty for a `manual`
    # wallet with no funding entitlement. A wallet funds automatically when it's
    # provisioned from a Feature with `wallet_behavior` configured; see [the
    # Wallets concept
    # guide](page:introduction/basic-concepts/wallets#provisioning-a-wallet-from
    # -a-feature).
    # @return [Array[WalletRecurringFunding]]
    attr_accessor :recurring_funding

    # The wallet's automatic funding schedules, if any. Empty for a `manual`
    # wallet with no funding entitlement. A wallet funds automatically when it's
    # provisioned from a Feature with `wallet_behavior` configured; see [the
    # Wallets concept
    # guide](page:introduction/basic-concepts/wallets#provisioning-a-wallet-from
    # -a-feature).
    # @return [DateTime]
    attr_accessor :created_at

    # The wallet's automatic funding schedules, if any. Empty for a `manual`
    # wallet with no funding entitlement. A wallet funds automatically when it's
    # provisioned from a Feature with `wallet_behavior` configured; see [the
    # Wallets concept
    # guide](page:introduction/basic-concepts/wallets#provisioning-a-wallet-from
    # -a-feature).
    # @return [DateTime]
    attr_accessor :updated_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['owner_type'] = 'owner_type'
      @_hash['owner_id'] = 'owner_id'
      @_hash['name'] = 'name'
      @_hash['wallet_product_id'] = 'wallet_product_id'
      @_hash['wallet_product_name'] = 'wallet_product_name'
      @_hash['unit'] = 'unit'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['balance'] = 'balance'
      @_hash['posted_balance'] = 'posted_balance'
      @_hash['meter'] = 'meter'
      @_hash['metered_through_at'] = 'metered_through_at'
      @_hash['metered_recheck_after_seconds'] =
        'metered_recheck_after_seconds'
      @_hash['metered_stale'] = 'metered_stale'
      @_hash['status'] = 'status'
      @_hash['depletion_policy'] = 'depletion_policy'
      @_hash['hard_stop_overflow'] = 'hard_stop_overflow'
      @_hash['origin'] = 'origin'
      @_hash['feature_key'] = 'feature_key'
      @_hash['grants'] = 'grants'
      @_hash['recurring_funding'] = 'recurring_funding'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        owner_type
        owner_id
        name
        wallet_product_id
        wallet_product_name
        unit
        price_point_id
        balance
        posted_balance
        meter
        metered_through_at
        metered_recheck_after_seconds
        metered_stale
        status
        depletion_policy
        hard_stop_overflow
        origin
        feature_key
        grants
        recurring_funding
        created_at
        updated_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        name
        price_point_id
        meter
        metered_through_at
        metered_recheck_after_seconds
        metered_stale
        feature_key
      ]
    end

    def initialize(id: SKIP, owner_type: SKIP, owner_id: SKIP, name: SKIP,
                   wallet_product_id: SKIP, wallet_product_name: SKIP,
                   unit: SKIP, price_point_id: SKIP, balance: SKIP,
                   posted_balance: SKIP, meter: SKIP, metered_through_at: SKIP,
                   metered_recheck_after_seconds: SKIP, metered_stale: SKIP,
                   status: SKIP, depletion_policy: SKIP,
                   hard_stop_overflow: SKIP, origin: SKIP, feature_key: SKIP,
                   grants: SKIP, recurring_funding: SKIP, created_at: SKIP,
                   updated_at: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @owner_type = owner_type unless owner_type == SKIP
      @owner_id = owner_id unless owner_id == SKIP
      @name = name unless name == SKIP
      @wallet_product_id = wallet_product_id unless wallet_product_id == SKIP
      @wallet_product_name = wallet_product_name unless wallet_product_name == SKIP
      @unit = unit unless unit == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @balance = balance unless balance == SKIP
      @posted_balance = posted_balance unless posted_balance == SKIP
      @meter = meter unless meter == SKIP
      @metered_through_at = metered_through_at unless metered_through_at == SKIP
      unless metered_recheck_after_seconds == SKIP
        @metered_recheck_after_seconds =
          metered_recheck_after_seconds
      end
      @metered_stale = metered_stale unless metered_stale == SKIP
      @status = status unless status == SKIP
      @depletion_policy = depletion_policy unless depletion_policy == SKIP
      @hard_stop_overflow = hard_stop_overflow unless hard_stop_overflow == SKIP
      @origin = origin unless origin == SKIP
      @feature_key = feature_key unless feature_key == SKIP
      @grants = grants unless grants == SKIP
      @recurring_funding = recurring_funding unless recurring_funding == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      owner_type = hash.key?('owner_type') ? hash['owner_type'] : SKIP
      owner_id = hash.key?('owner_id') ? hash['owner_id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      wallet_product_id =
        hash.key?('wallet_product_id') ? hash['wallet_product_id'] : SKIP
      wallet_product_name =
        hash.key?('wallet_product_name') ? hash['wallet_product_name'] : SKIP
      unit = hash.key?('unit') ? hash['unit'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      balance = hash.key?('balance') ? hash['balance'] : SKIP
      posted_balance =
        hash.key?('posted_balance') ? hash['posted_balance'] : SKIP
      meter = Meter.from_hash(hash['meter']) if hash['meter']
      metered_through_at = if hash.key?('metered_through_at')
                             (DateTimeHelper.from_rfc3339(hash['metered_through_at']) if hash['metered_through_at'])
                           else
                             SKIP
                           end
      metered_recheck_after_seconds =
        hash.key?('metered_recheck_after_seconds') ? hash['metered_recheck_after_seconds'] : SKIP
      metered_stale = hash.key?('metered_stale') ? hash['metered_stale'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      depletion_policy =
        hash.key?('depletion_policy') ? hash['depletion_policy'] : SKIP
      hard_stop_overflow =
        hash.key?('hard_stop_overflow') ? hash['hard_stop_overflow'] : SKIP
      origin = hash.key?('origin') ? hash['origin'] : SKIP
      feature_key = hash.key?('feature_key') ? hash['feature_key'] : SKIP
      # Parameter is an array, so we need to iterate through it
      grants = nil
      unless hash['grants'].nil?
        grants = []
        hash['grants'].each do |structure|
          grants << (WalletGrant.from_hash(structure) if structure)
        end
      end

      grants = SKIP unless hash.key?('grants')
      # Parameter is an array, so we need to iterate through it
      recurring_funding = nil
      unless hash['recurring_funding'].nil?
        recurring_funding = []
        hash['recurring_funding'].each do |structure|
          recurring_funding << (WalletRecurringFunding.from_hash(structure) if structure)
        end
      end

      recurring_funding = SKIP unless hash.key?('recurring_funding')
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      updated_at = if hash.key?('updated_at')
                     (DateTimeHelper.from_rfc3339(hash['updated_at']) if hash['updated_at'])
                   else
                     SKIP
                   end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Wallet.new(id: id,
                 owner_type: owner_type,
                 owner_id: owner_id,
                 name: name,
                 wallet_product_id: wallet_product_id,
                 wallet_product_name: wallet_product_name,
                 unit: unit,
                 price_point_id: price_point_id,
                 balance: balance,
                 posted_balance: posted_balance,
                 meter: meter,
                 metered_through_at: metered_through_at,
                 metered_recheck_after_seconds: metered_recheck_after_seconds,
                 metered_stale: metered_stale,
                 status: status,
                 depletion_policy: depletion_policy,
                 hard_stop_overflow: hard_stop_overflow,
                 origin: origin,
                 feature_key: feature_key,
                 grants: grants,
                 recurring_funding: recurring_funding,
                 created_at: created_at,
                 updated_at: updated_at,
                 additional_properties: additional_properties)
    end

    def to_custom_metered_through_at
      DateTimeHelper.to_rfc3339(metered_through_at)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_custom_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, owner_type: #{@owner_type}, owner_id: #{@owner_id}, name:"\
      " #{@name}, wallet_product_id: #{@wallet_product_id}, wallet_product_name:"\
      " #{@wallet_product_name}, unit: #{@unit}, price_point_id: #{@price_point_id}, balance:"\
      " #{@balance}, posted_balance: #{@posted_balance}, meter: #{@meter}, metered_through_at:"\
      " #{@metered_through_at}, metered_recheck_after_seconds: #{@metered_recheck_after_seconds},"\
      " metered_stale: #{@metered_stale}, status: #{@status}, depletion_policy:"\
      " #{@depletion_policy}, hard_stop_overflow: #{@hard_stop_overflow}, origin: #{@origin},"\
      " feature_key: #{@feature_key}, grants: #{@grants}, recurring_funding:"\
      " #{@recurring_funding}, created_at: #{@created_at}, updated_at: #{@updated_at},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, owner_type: #{@owner_type.inspect}, owner_id:"\
      " #{@owner_id.inspect}, name: #{@name.inspect}, wallet_product_id:"\
      " #{@wallet_product_id.inspect}, wallet_product_name: #{@wallet_product_name.inspect}, unit:"\
      " #{@unit.inspect}, price_point_id: #{@price_point_id.inspect}, balance:"\
      " #{@balance.inspect}, posted_balance: #{@posted_balance.inspect}, meter: #{@meter.inspect},"\
      " metered_through_at: #{@metered_through_at.inspect}, metered_recheck_after_seconds:"\
      " #{@metered_recheck_after_seconds.inspect}, metered_stale: #{@metered_stale.inspect},"\
      " status: #{@status.inspect}, depletion_policy: #{@depletion_policy.inspect},"\
      " hard_stop_overflow: #{@hard_stop_overflow.inspect}, origin: #{@origin.inspect},"\
      " feature_key: #{@feature_key.inspect}, grants: #{@grants.inspect}, recurring_funding:"\
      " #{@recurring_funding.inspect}, created_at: #{@created_at.inspect}, updated_at:"\
      " #{@updated_at.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
