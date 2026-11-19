# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # A funding tranche embedded on the wallet. `original` is the amount the grant
  # was created with; `posted_remaining` is what debits and adjustments written
  # to the ledger have left; `remaining` is what can still be spent. Debits
  # drain grants earliest-expiration-first (grants with no expiration are
  # drained last).
  class WalletGrant < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Advanced Billing id of the grant.
    # @return [Integer]
    attr_accessor :id

    # The memo the grant was created with, or `Grant
    # @return [String]
    attr_accessor :name

    # The amount the grant was created with, encoded as a decimal string. Never
    # changes after creation.
    # @return [String]
    attr_accessor :original

    # What the grant can still spend, encoded as a decimal string. On [Read
    # Wallet]($e/Wallets/readWallet) for a metered wallet whose `balance` is the
    # live figure, this is `posted_remaining` less the pending usage drawn from
    # this grant in drain order: usage past a grant spills to the next one, and
    # usage past every grant is an overdraft that belongs to no grant. It never
    # goes below zero, and the grants' `remaining` add up to the wallet's
    # `balance` whenever `balance` is zero or more. Everywhere else it equals
    # `posted_remaining`.
    # @return [String]
    attr_accessor :remaining

    # The grant's remainder from written ledger entries alone, encoded as a
    # decimal string. Always present. This is the figure an adjustment checks
    # `expected_remaining` and its bounds against, so send it back, not
    # `remaining`, when correcting a grant.
    # @return [String]
    attr_accessor :posted_remaining

    # When this grant's unconsumed remainder is automatically written off.
    # `null` for an evergreen grant.
    # @return [DateTime]
    attr_accessor :expires_at

    # The calendar day `expires_at` falls on, already resolved in the site's
    # time zone.
    # @return [Date]
    attr_accessor :expires_on

    # When the expiry sweep actually wrote this grant's remainder off. Usually
    # falls shortly after `expires_at`; use `expires_on` for the date the grant
    # expired, not this field. `null` if the grant was never written off
    # (including a grant simply spent to zero before its `expires_at`).
    # @return [DateTime]
    attr_accessor :expired_at

    # The calendar day `expired_at` falls on, resolved in the site's time zone.
    # @return [Date]
    attr_accessor :expired_on

    # How the grant was created. `recurring` comes from the wallet's automatic
    # funding schedule (see the wallet's `recurring_funding` array). `manual`
    # comes from a one-time grant posted to [Create Wallet
    # Transaction]($e/Wallet%20Transactions/createWalletTransaction).
    # `initial_balance` comes from a non-zero `initial_balance` at wallet
    # creation. `allowance_increase` comes from raising a funding entitlement's
    # allowance while it's already funding a wallet. `purchase` comes from
    # [Create Wallet Purchase]($e/Wallet%20Purchases/createWalletPurchase).
    # @return [Origin]
    attr_accessor :origin

    # For a `recurring` grant, the start of the funding cadence period this
    # grant covers. `null` for every other origin. After a gap in funding (see
    # `skipped_periods`), this is the period currently in progress, not the
    # oldest period that was missed.
    # @return [DateTime]
    attr_accessor :granted_for_period_start

    # The uid of the invoice that paid for this grant, for a grant with `origin`
    # of `purchase`. `null` for every other origin.
    # @return [String]
    attr_accessor :invoice_uid

    # The uid of the invoice that paid for this grant, for a grant with `origin`
    # of `purchase`. `null` for every other origin.
    # @return [DateTime]
    attr_accessor :created_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['original'] = 'original'
      @_hash['remaining'] = 'remaining'
      @_hash['posted_remaining'] = 'posted_remaining'
      @_hash['expires_at'] = 'expires_at'
      @_hash['expires_on'] = 'expires_on'
      @_hash['expired_at'] = 'expired_at'
      @_hash['expired_on'] = 'expired_on'
      @_hash['origin'] = 'origin'
      @_hash['granted_for_period_start'] = 'granted_for_period_start'
      @_hash['invoice_uid'] = 'invoice_uid'
      @_hash['created_at'] = 'created_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        original
        remaining
        posted_remaining
        expires_at
        expires_on
        expired_at
        expired_on
        origin
        granted_for_period_start
        invoice_uid
        created_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        expires_at
        expires_on
        expired_at
        expired_on
        granted_for_period_start
        invoice_uid
      ]
    end

    def initialize(id: SKIP, name: SKIP, original: SKIP, remaining: SKIP,
                   posted_remaining: SKIP, expires_at: SKIP, expires_on: SKIP,
                   expired_at: SKIP, expired_on: SKIP, origin: SKIP,
                   granted_for_period_start: SKIP, invoice_uid: SKIP,
                   created_at: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @original = original unless original == SKIP
      @remaining = remaining unless remaining == SKIP
      @posted_remaining = posted_remaining unless posted_remaining == SKIP
      @expires_at = expires_at unless expires_at == SKIP
      @expires_on = expires_on unless expires_on == SKIP
      @expired_at = expired_at unless expired_at == SKIP
      @expired_on = expired_on unless expired_on == SKIP
      @origin = origin unless origin == SKIP
      @granted_for_period_start = granted_for_period_start unless granted_for_period_start == SKIP
      @invoice_uid = invoice_uid unless invoice_uid == SKIP
      @created_at = created_at unless created_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      original = hash.key?('original') ? hash['original'] : SKIP
      remaining = hash.key?('remaining') ? hash['remaining'] : SKIP
      posted_remaining =
        hash.key?('posted_remaining') ? hash['posted_remaining'] : SKIP
      expires_at = if hash.key?('expires_at')
                     (DateTimeHelper.from_rfc3339(hash['expires_at']) if hash['expires_at'])
                   else
                     SKIP
                   end
      expires_on = hash.key?('expires_on') ? hash['expires_on'] : SKIP
      expired_at = if hash.key?('expired_at')
                     (DateTimeHelper.from_rfc3339(hash['expired_at']) if hash['expired_at'])
                   else
                     SKIP
                   end
      expired_on = hash.key?('expired_on') ? hash['expired_on'] : SKIP
      origin = hash.key?('origin') ? hash['origin'] : SKIP
      granted_for_period_start = if hash.key?('granted_for_period_start')
                                   (DateTimeHelper.from_rfc3339(hash['granted_for_period_start']) if hash['granted_for_period_start'])
                                 else
                                   SKIP
                                 end
      invoice_uid = hash.key?('invoice_uid') ? hash['invoice_uid'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletGrant.new(id: id,
                      name: name,
                      original: original,
                      remaining: remaining,
                      posted_remaining: posted_remaining,
                      expires_at: expires_at,
                      expires_on: expires_on,
                      expired_at: expired_at,
                      expired_on: expired_on,
                      origin: origin,
                      granted_for_period_start: granted_for_period_start,
                      invoice_uid: invoice_uid,
                      created_at: created_at,
                      additional_properties: additional_properties)
    end

    def to_custom_expires_at
      DateTimeHelper.to_rfc3339(expires_at)
    end

    def to_custom_expired_at
      DateTimeHelper.to_rfc3339(expired_at)
    end

    def to_custom_granted_for_period_start
      DateTimeHelper.to_rfc3339(granted_for_period_start)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, name: #{@name}, original: #{@original}, remaining:"\
      " #{@remaining}, posted_remaining: #{@posted_remaining}, expires_at: #{@expires_at},"\
      " expires_on: #{@expires_on}, expired_at: #{@expired_at}, expired_on: #{@expired_on},"\
      " origin: #{@origin}, granted_for_period_start: #{@granted_for_period_start}, invoice_uid:"\
      " #{@invoice_uid}, created_at: #{@created_at}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, name: #{@name.inspect}, original: #{@original.inspect},"\
      " remaining: #{@remaining.inspect}, posted_remaining: #{@posted_remaining.inspect},"\
      " expires_at: #{@expires_at.inspect}, expires_on: #{@expires_on.inspect}, expired_at:"\
      " #{@expired_at.inspect}, expired_on: #{@expired_on.inspect}, origin: #{@origin.inspect},"\
      " granted_for_period_start: #{@granted_for_period_start.inspect}, invoice_uid:"\
      " #{@invoice_uid.inspect}, created_at: #{@created_at.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
