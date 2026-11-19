# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # Describes automatic funding of the wallet from a usage-limit entitlement.
  # Set up by configuring `wallet_behavior` on the Feature behind that
  # entitlement, not by any parameter on the wallet itself. This field is an
  # array as of its first release. The array currently holds zero or one
  # element, and is expected to hold several once a wallet can be funded by more
  # than one entitlement.
  class WalletRecurringFunding < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Advanced Billing id of the recurring funding schedule.
    # @return [Integer]
    attr_accessor :id

    # The usage-limit entitlement this schedule reads its allowance and cadence
    # from.
    # @return [Integer]
    attr_accessor :entitlement_id

    # The entitlement's current allowance, read fresh at request time rather
    # than stored on the wallet. Editing the entitlement changes this
    # immediately, with no separate sync step. `"0"` means the entitlement is
    # configured to grant nothing, a valid, working configuration and not an
    # error. `null` when `status` is `stopped`, since there is no longer an
    # entitlement to read.
    # @return [String]
    attr_accessor :allowance

    # When the next automatic grant is due. Grants are applied by a background
    # process shortly after this moment passes, not exactly on it, so a wallet
    # read taken in that window still shows the pre-grant balance. `null` when
    # `status` is `stopped`, and also `null` once the owning subscription has
    # terminated, even while `status` is still `active`: at its next due moment
    # the schedule is stopped with reason `subscription_terminated`.
    # @return [DateTime]
    attr_accessor :next_grant_at

    # The calendar day `next_grant_at` falls on, resolved in the site's time
    # zone. `null` under the same conditions as `next_grant_at`.
    # @return [Date]
    attr_accessor :next_grant_on

    # Cumulative count of due moments that passed without a grant being made
    # (for example, during an outage). A gap in funding is visible here without
    # cross-referencing the ledger.
    # @return [Integer]
    attr_accessor :skipped_periods

    # `active`: refilling normally. `erroring`: the schedule is still due and
    # retrying, but the last attempt couldn't be written (see `reason`);
    # correcting the underlying entitlement resumes funding on the next run with
    # no action needed on the wallet itself. `stopped`: funding has ended for
    # good (see `reason`); units already granted stay on the wallet and remain
    # spendable, but no further automatic grants will be made.
    # @return [WalletRecurringFundingStatus]
    attr_accessor :status

    # Set whenever `status` isn't `active`. Accompanying `stopped`:
    # `entitlement_missing` (an ordinary product or component change removed the
    # entitlement), `wallet_archived` (the wallet was archived),
    # `subscription_terminated` (the subscription reached a terminal state;
    # funding resumes if the subscription returns to a granting state, for
    # example on reactivation, without back-granting the periods it missed),
    # `feature_removed` (the subscription no longer has this Feature),
    # `wallet_behavior_disabled` (the Feature no longer has `wallet_behavior`
    # configured), `superseded_by_replacement` (a later entitlement now funds
    # this wallet instead), or `subscription_prepaid` (the subscription switched
    # to prepaid, which cannot carry an active wallet). Accompanying `erroring`:
    # `allowance_not_representable` (the entitlement's current allowance doesn't
    # fit the wallet's amount encoding) or `balance_at_capacity` (granting it
    # would push the balance past the maximum supported value).
    # @return [Reason]
    attr_accessor :reason

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['entitlement_id'] = 'entitlement_id'
      @_hash['allowance'] = 'allowance'
      @_hash['next_grant_at'] = 'next_grant_at'
      @_hash['next_grant_on'] = 'next_grant_on'
      @_hash['skipped_periods'] = 'skipped_periods'
      @_hash['status'] = 'status'
      @_hash['reason'] = 'reason'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        entitlement_id
        allowance
        next_grant_at
        next_grant_on
        skipped_periods
        status
        reason
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        allowance
        next_grant_at
        next_grant_on
        reason
      ]
    end

    def initialize(id: SKIP, entitlement_id: SKIP, allowance: SKIP,
                   next_grant_at: SKIP, next_grant_on: SKIP,
                   skipped_periods: SKIP, status: SKIP, reason: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @entitlement_id = entitlement_id unless entitlement_id == SKIP
      @allowance = allowance unless allowance == SKIP
      @next_grant_at = next_grant_at unless next_grant_at == SKIP
      @next_grant_on = next_grant_on unless next_grant_on == SKIP
      @skipped_periods = skipped_periods unless skipped_periods == SKIP
      @status = status unless status == SKIP
      @reason = reason unless reason == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      entitlement_id =
        hash.key?('entitlement_id') ? hash['entitlement_id'] : SKIP
      allowance = hash.key?('allowance') ? hash['allowance'] : SKIP
      next_grant_at = if hash.key?('next_grant_at')
                        (DateTimeHelper.from_rfc3339(hash['next_grant_at']) if hash['next_grant_at'])
                      else
                        SKIP
                      end
      next_grant_on = hash.key?('next_grant_on') ? hash['next_grant_on'] : SKIP
      skipped_periods =
        hash.key?('skipped_periods') ? hash['skipped_periods'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      reason = hash.key?('reason') ? hash['reason'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletRecurringFunding.new(id: id,
                                 entitlement_id: entitlement_id,
                                 allowance: allowance,
                                 next_grant_at: next_grant_at,
                                 next_grant_on: next_grant_on,
                                 skipped_periods: skipped_periods,
                                 status: status,
                                 reason: reason,
                                 additional_properties: additional_properties)
    end

    def to_custom_next_grant_at
      DateTimeHelper.to_rfc3339(next_grant_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, entitlement_id: #{@entitlement_id}, allowance: #{@allowance},"\
      " next_grant_at: #{@next_grant_at}, next_grant_on: #{@next_grant_on}, skipped_periods:"\
      " #{@skipped_periods}, status: #{@status}, reason: #{@reason}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, entitlement_id: #{@entitlement_id.inspect}, allowance:"\
      " #{@allowance.inspect}, next_grant_at: #{@next_grant_at.inspect}, next_grant_on:"\
      " #{@next_grant_on.inspect}, skipped_periods: #{@skipped_periods.inspect}, status:"\
      " #{@status.inspect}, reason: #{@reason.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
