# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # An optional object, will be returned if provided `include=subscription`
  # query param.
  class SubscriptionComponentSubscription < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The state of a subscription.
    # * **Live States**
    #     * `active` - A normal, active subscription. It is not in a trial and
    # is paid and up to date.
    #     * `assessing` - An internal (transient) state that indicates a
    # subscription is in the middle of periodic assessment. Do not base any
    # access decisions in your app on this state, as it may not always be
    # exposed.
    #     * `pending` - An internal (transient) state that indicates a
    # subscription is in the creation process. Do not base any access decisions
    # in your app on this state, as it may not always be exposed.
    #     * `trialing` - A subscription in trialing state has a valid trial
    # subscription. This type of subscription may transition to active once
    # payment is received when the trial has ended. Otherwise, it may go to a
    # Problem or End of Life state.
    #     * `paused` - An internal state that indicates that your account with
    # Advanced Billing is in arrears.
    # * **Problem States**
    #     * `past_due` - Indicates that the most recent payment has failed, and
    # payment is past due for this subscription. If you have enabled our
    # automated dunning, this subscription will be in the dunning process
    # (additional status and callbacks from the dunning process will be
    # available in the future). If you are handling dunning and payment updates
    # yourself, you will want to use this state to initiate a payment update
    # from your customers.
    #     * `soft_failure` - Indicates that normal assessment/processing of the
    # subscription has failed for a reason that cannot be fixed by the Customer.
    # For example, a Soft Fail may result from a timeout at the gateway or
    # incorrect credentials on your part. The subscriptions should be retried
    # automatically. An interface is being built for you to review problems
    # resulting from these events to take manual action when needed.
    #     * `unpaid` - Indicates an unpaid subscription. A subscription is
    # marked unpaid if the retry period expires and you have configured your
    # [Dunning](https://maxio.zendesk.com/hc/en-us/articles/24287076583565-Dunni
    # ng-Overview) settings to have a Final Action of `mark the subscription
    # unpaid`.
    # * **End of Life States**
    #     * `canceled` - Indicates a canceled subscription. This may happen at
    # your request (via the API or the web interface) or due to the expiration
    # of the
    # [Dunning](https://maxio.zendesk.com/hc/en-us/articles/24287076583565-Dunni
    # ng-Overview) process without payment. See the
    # [Reactivation](https://maxio.zendesk.com/hc/en-us/articles/24252109503629-
    # Reactivating-and-Resuming) documentation for info on how to restart a
    # canceled subscription.
    #     While a subscription is canceled, its period will not advance, it will
    # not accrue any new charges, and Advanced Billing will not attempt to
    # collect the overdue balance.
    #     * `expired` - Indicates a subscription that has expired due to running
    # its normal life cycle. Some products may be configured to have an
    # expiration period. An expired subscription then is one that stayed active
    # until it fulfilled its full period.
    #     * `failed_to_create` - Indicates that signup has failed. (You may see
    # this state in a signup_failure webhook.)
    #     * `on_hold` - Indicates that a subscription’s billing has been
    # temporarily stopped. While it is expected that the subscription will
    # resume and return to active status, this is still treated as an “End of
    # Life” state because the customer is not paying for services during this
    # time.
    #     * `suspended` - Indicates that a prepaid subscription has used up all
    # their prepayment balance. If a prepayment is applied, it will return to an
    # active state.
    #     * `trial_ended` - A subscription in a trial_ended state is a
    # subscription that completed a no-obligation trial and did not have a card
    # on file at the expiration of the trial period. See [Product Pricing – No
    # Obligation
    # Trials](https://maxio.zendesk.com/hc/en-us/articles/24261076617869-Product
    # -Editing) for more details.
    # See [Subscription
    # States](https://maxio.zendesk.com/hc/en-us/articles/24252119027853-Subscri
    # ption-States) for more info about subscription states and state
    # transitions.
    # @return [SubscriptionState]
    attr_accessor :state

    # The state of a subscription.
    # * **Live States**
    #     * `active` - A normal, active subscription. It is not in a trial and
    # is paid and up to date.
    #     * `assessing` - An internal (transient) state that indicates a
    # subscription is in the middle of periodic assessment. Do not base any
    # access decisions in your app on this state, as it may not always be
    # exposed.
    #     * `pending` - An internal (transient) state that indicates a
    # subscription is in the creation process. Do not base any access decisions
    # in your app on this state, as it may not always be exposed.
    #     * `trialing` - A subscription in trialing state has a valid trial
    # subscription. This type of subscription may transition to active once
    # payment is received when the trial has ended. Otherwise, it may go to a
    # Problem or End of Life state.
    #     * `paused` - An internal state that indicates that your account with
    # Advanced Billing is in arrears.
    # * **Problem States**
    #     * `past_due` - Indicates that the most recent payment has failed, and
    # payment is past due for this subscription. If you have enabled our
    # automated dunning, this subscription will be in the dunning process
    # (additional status and callbacks from the dunning process will be
    # available in the future). If you are handling dunning and payment updates
    # yourself, you will want to use this state to initiate a payment update
    # from your customers.
    #     * `soft_failure` - Indicates that normal assessment/processing of the
    # subscription has failed for a reason that cannot be fixed by the Customer.
    # For example, a Soft Fail may result from a timeout at the gateway or
    # incorrect credentials on your part. The subscriptions should be retried
    # automatically. An interface is being built for you to review problems
    # resulting from these events to take manual action when needed.
    #     * `unpaid` - Indicates an unpaid subscription. A subscription is
    # marked unpaid if the retry period expires and you have configured your
    # [Dunning](https://maxio.zendesk.com/hc/en-us/articles/24287076583565-Dunni
    # ng-Overview) settings to have a Final Action of `mark the subscription
    # unpaid`.
    # * **End of Life States**
    #     * `canceled` - Indicates a canceled subscription. This may happen at
    # your request (via the API or the web interface) or due to the expiration
    # of the
    # [Dunning](https://maxio.zendesk.com/hc/en-us/articles/24287076583565-Dunni
    # ng-Overview) process without payment. See the
    # [Reactivation](https://maxio.zendesk.com/hc/en-us/articles/24252109503629-
    # Reactivating-and-Resuming) documentation for info on how to restart a
    # canceled subscription.
    #     While a subscription is canceled, its period will not advance, it will
    # not accrue any new charges, and Advanced Billing will not attempt to
    # collect the overdue balance.
    #     * `expired` - Indicates a subscription that has expired due to running
    # its normal life cycle. Some products may be configured to have an
    # expiration period. An expired subscription then is one that stayed active
    # until it fulfilled its full period.
    #     * `failed_to_create` - Indicates that signup has failed. (You may see
    # this state in a signup_failure webhook.)
    #     * `on_hold` - Indicates that a subscription’s billing has been
    # temporarily stopped. While it is expected that the subscription will
    # resume and return to active status, this is still treated as an “End of
    # Life” state because the customer is not paying for services during this
    # time.
    #     * `suspended` - Indicates that a prepaid subscription has used up all
    # their prepayment balance. If a prepayment is applied, it will return to an
    # active state.
    #     * `trial_ended` - A subscription in a trial_ended state is a
    # subscription that completed a no-obligation trial and did not have a card
    # on file at the expiration of the trial period. See [Product Pricing – No
    # Obligation
    # Trials](https://maxio.zendesk.com/hc/en-us/articles/24261076617869-Product
    # -Editing) for more details.
    # See [Subscription
    # States](https://maxio.zendesk.com/hc/en-us/articles/24252119027853-Subscri
    # ption-States) for more info about subscription states and state
    # transitions.
    # @return [DateTime]
    attr_accessor :updated_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['state'] = 'state'
      @_hash['updated_at'] = 'updated_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        state
        updated_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(state: SKIP, updated_at: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @state = state unless state == SKIP
      @updated_at = updated_at unless updated_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      state = hash.key?('state') ? hash['state'] : SKIP
      updated_at = if hash.key?('updated_at')
                     (DateTimeHelper.from_rfc3339(hash['updated_at']) if hash['updated_at'])
                   else
                     SKIP
                   end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionComponentSubscription.new(state: state,
                                            updated_at: updated_at,
                                            additional_properties: additional_properties)
    end

    def to_custom_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end

    # Validates an instance of the object from a given value.
    # @param [SubscriptionComponentSubscription | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
