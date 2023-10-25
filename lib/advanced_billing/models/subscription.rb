# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Subscription Model.
  class Subscription < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The subscription unique id within Chargify.
    # @return [Integer]
    attr_accessor :id

    # The current state of the subscription. Please see the documentation for
    # [Subscription
    # States](https://help.chargify.com/subscriptions/subscription-states.html)
    # @return [String]
    attr_accessor :state

    # Gives the current outstanding subscription balance in the number of cents.
    # @return [Integer]
    attr_accessor :balance_in_cents

    # Gives the total revenue from the subscription in the number of cents.
    # @return [Integer]
    attr_accessor :total_revenue_in_cents

    # (Added Nov 5 2013) The recurring amount of the product (and
    # version),currently subscribed. NOTE: this may differ from the current
    # price of,the product, if you’ve changed the price of the product but
    # haven’t,moved this subscription to a newer version.
    # @return [Integer]
    attr_accessor :product_price_in_cents

    # The version of the product for the subscription. Note that this is a
    # deprecated field kept for backwards-compatibility.
    # @return [Integer]
    attr_accessor :product_version_number

    # Timestamp relating to the end of the current (recurring) period (i.e.,when
    # the next regularly scheduled attempted charge will occur)
    # @return [String]
    attr_accessor :current_period_ends_at

    # Timestamp that indicates when capture of payment will be tried or,retried.
    # This value will usually track the current_period_ends_at, but,will diverge
    # if a renewal payment fails and must be retried. In that,case, the
    # current_period_ends_at will advance to the end of the next,period (time
    # doesn’t stop because a payment was missed) but the,next_assessment_at will
    # be scheduled for the auto-retry time (i.e. 24,hours in the future, in some
    # cases)
    # @return [String]
    attr_accessor :next_assessment_at

    # Timestamp for when the trial period (if any) began
    # @return [String]
    attr_accessor :trial_started_at

    # Timestamp for when the trial period (if any) ended
    # @return [String]
    attr_accessor :trial_ended_at

    # Timestamp for when the subscription began (i.e. when it came out of trial,
    # or when it began in the case of no trial)
    # @return [String]
    attr_accessor :activated_at

    # Timestamp giving the expiration date of this subscription (if any)
    # @return [String]
    attr_accessor :expires_at

    # The creation date for this subscription
    # @return [String]
    attr_accessor :created_at

    # The date of last update for this subscription
    # @return [String]
    attr_accessor :updated_at

    # Seller-provided reason for, or note about, the cancellation.
    # @return [String]
    attr_accessor :cancellation_message

    # The process used to cancel the subscription, if the subscription has been
    # canceled. It is nil if the subscription's state is not canceled.
    # @return [CancellationMethod]
    attr_accessor :cancellation_method

    # Whether or not the subscription will (or has) canceled at the end of the
    # period.
    # @return [TrueClass | FalseClass]
    attr_accessor :cancel_at_end_of_period

    # The timestamp of the most recent cancellation
    # @return [String]
    attr_accessor :canceled_at

    # Timestamp relating to the start of the current (recurring) period
    # @return [String]
    attr_accessor :current_period_started_at

    # Only valid for webhook payloads The previous state for webhooks that have
    # indicated a change in state. For normal API calls, this will always be the
    # same as the state (current state)
    # @return [String]
    attr_accessor :previous_state

    # The ID of the transaction that generated the revenue
    # @return [Integer]
    attr_accessor :signup_payment_id

    # The revenue, formatted as a string of decimal separated dollars and,cents,
    # from the subscription signup ($50.00 would be formatted as,50.00)
    # @return [String]
    attr_accessor :signup_revenue

    # Timestamp for when the subscription is currently set to cancel.
    # @return [String]
    attr_accessor :delayed_cancel_at

    # (deprecated) The coupon code of the single coupon currently applied to the
    # subscription. See coupon_codes instead as subscriptions can now have more
    # than one coupon.
    # @return [String]
    attr_accessor :coupon_code

    # The day of the month that the subscription will charge according to
    # calendar billing rules, if used.
    # @return [String]
    attr_accessor :snap_day

    # The day of the month that the subscription will charge according to
    # calendar billing rules, if used.
    # @return [PaymentCollectionMethod]
    attr_accessor :payment_collection_method

    # The day of the month that the subscription will charge according to
    # calendar billing rules, if used.
    # @return [Customer]
    attr_accessor :customer

    # The day of the month that the subscription will charge according to
    # calendar billing rules, if used.
    # @return [Product]
    attr_accessor :product

    # The day of the month that the subscription will charge according to
    # calendar billing rules, if used.
    # @return [PaymentProfile]
    attr_accessor :credit_card

    # The day of the month that the subscription will charge according to
    # calendar billing rules, if used.
    # @return [SubscriptionGroupInlined]
    attr_accessor :group

    # The day of the month that the subscription will charge according to
    # calendar billing rules, if used.
    # @return [SubscriptionBankAccount]
    attr_accessor :bank_account

    # The payment profile type for the active profile on file.
    # @return [String]
    attr_accessor :payment_type

    # The subscription's unique code that can be given to referrals.
    # @return [String]
    attr_accessor :referral_code

    # If a delayed product change is scheduled, the ID of the product that the
    # subscription will be changed to at the next renewal.
    # @return [Integer]
    attr_accessor :next_product_id

    # If a delayed product change is scheduled, the handle of the product that
    # the subscription will be changed to at the next renewal.
    # @return [String]
    attr_accessor :next_product_handle

    # (deprecated) How many times the subscription's single coupon has been
    # used. This field has no replacement for multiple coupons.
    # @return [Integer]
    attr_accessor :coupon_use_count

    # (deprecated) How many times the subscription's single coupon may be used.
    # This field has no replacement for multiple coupons.
    # @return [Integer]
    attr_accessor :coupon_uses_allowed

    # If the subscription is canceled, this is their churn code.
    # @return [String]
    attr_accessor :reason_code

    # The date the subscription is scheduled to automatically resume from the
    # on_hold state.
    # @return [String]
    attr_accessor :automatically_resume_at

    # An array for all the coupons attached to the subscription.
    # @return [Array[String]]
    attr_accessor :coupon_codes

    # The ID of the offer associated with the subscription.
    # @return [Integer]
    attr_accessor :offer_id

    # On Relationship Invoicing, the ID of the individual paying for the
    # subscription. Defaults to the Customer ID unless the 'Customer Hierarchies
    # & WhoPays' feature is enabled.
    # @return [Integer]
    attr_accessor :payer_id

    # The balance in cents plus the estimated renewal amount in cents.
    # @return [Integer]
    attr_accessor :current_billing_amount_in_cents

    # The product price point currently subscribed to.
    # @return [Integer]
    attr_accessor :product_price_point_id

    # One of the following: custom, default, catalog.
    # @return [String]
    attr_accessor :product_price_point_type

    # If a delayed product change is scheduled, the ID of the product price
    # point that the subscription will be changed to at the next renewal.
    # @return [Integer]
    attr_accessor :next_product_price_point_id

    # On Relationship Invoicing, the number of days before a renewal invoice is
    # due.
    # @return [Integer]
    attr_accessor :net_terms

    # For European sites subject to PSD2 and using 3D Secure, this can be used
    # to reference a previous transaction for the customer. This will ensure the
    # card will be charged successfully at renewal.
    # @return [Integer]
    attr_accessor :stored_credential_transaction_id

    # The reference value (provided by your app) for the subscription itelf.
    # @return [String]
    attr_accessor :reference

    # The timestamp of the most recent on hold action.
    # @return [String]
    attr_accessor :on_hold_at

    # Boolean representing whether the subscription is prepaid and currently in
    # dunning. Only returned for Relationship Invoicing sites with the feature
    # enabled
    # @return [TrueClass | FalseClass]
    attr_accessor :prepaid_dunning

    # Additional coupon data. To use this data you also have to include the
    # following param in the request`include[]=coupons`.
    # Only in Read Subscription Endpoint.
    # @return [Array[SubscriptionIncludedCoupon]]
    attr_accessor :coupons

    # Enable Communication Delay feature, making sure no communication (email or
    # SMS) is sent to the Customer between 9PM and 8AM in time zone set by the
    # `dunning_communication_delay_time_zone` attribute.
    # @return [TrueClass | FalseClass]
    attr_accessor :dunning_communication_delay_enabled

    # Time zone for the Dunning Communication Delay feature.
    # @return [String]
    attr_accessor :dunning_communication_delay_time_zone

    # Time zone for the Dunning Communication Delay feature.
    # @return [TrueClass | FalseClass]
    attr_accessor :receives_invoice_emails

    # Time zone for the Dunning Communication Delay feature.
    # @return [String]
    attr_accessor :locale

    # Time zone for the Dunning Communication Delay feature.
    # @return [String]
    attr_accessor :currency

    # Time zone for the Dunning Communication Delay feature.
    # @return [String]
    attr_accessor :scheduled_cancellation_at

    # Time zone for the Dunning Communication Delay feature.
    # @return [Integer]
    attr_accessor :credit_balance_in_cents

    # Time zone for the Dunning Communication Delay feature.
    # @return [Integer]
    attr_accessor :prepayment_balance_in_cents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['state'] = 'state'
      @_hash['balance_in_cents'] = 'balance_in_cents'
      @_hash['total_revenue_in_cents'] = 'total_revenue_in_cents'
      @_hash['product_price_in_cents'] = 'product_price_in_cents'
      @_hash['product_version_number'] = 'product_version_number'
      @_hash['current_period_ends_at'] = 'current_period_ends_at'
      @_hash['next_assessment_at'] = 'next_assessment_at'
      @_hash['trial_started_at'] = 'trial_started_at'
      @_hash['trial_ended_at'] = 'trial_ended_at'
      @_hash['activated_at'] = 'activated_at'
      @_hash['expires_at'] = 'expires_at'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['cancellation_message'] = 'cancellation_message'
      @_hash['cancellation_method'] = 'cancellation_method'
      @_hash['cancel_at_end_of_period'] = 'cancel_at_end_of_period'
      @_hash['canceled_at'] = 'canceled_at'
      @_hash['current_period_started_at'] = 'current_period_started_at'
      @_hash['previous_state'] = 'previous_state'
      @_hash['signup_payment_id'] = 'signup_payment_id'
      @_hash['signup_revenue'] = 'signup_revenue'
      @_hash['delayed_cancel_at'] = 'delayed_cancel_at'
      @_hash['coupon_code'] = 'coupon_code'
      @_hash['snap_day'] = 'snap_day'
      @_hash['payment_collection_method'] = 'payment_collection_method'
      @_hash['customer'] = 'customer'
      @_hash['product'] = 'product'
      @_hash['credit_card'] = 'credit_card'
      @_hash['group'] = 'group'
      @_hash['bank_account'] = 'bank_account'
      @_hash['payment_type'] = 'payment_type'
      @_hash['referral_code'] = 'referral_code'
      @_hash['next_product_id'] = 'next_product_id'
      @_hash['next_product_handle'] = 'next_product_handle'
      @_hash['coupon_use_count'] = 'coupon_use_count'
      @_hash['coupon_uses_allowed'] = 'coupon_uses_allowed'
      @_hash['reason_code'] = 'reason_code'
      @_hash['automatically_resume_at'] = 'automatically_resume_at'
      @_hash['coupon_codes'] = 'coupon_codes'
      @_hash['offer_id'] = 'offer_id'
      @_hash['payer_id'] = 'payer_id'
      @_hash['current_billing_amount_in_cents'] =
        'current_billing_amount_in_cents'
      @_hash['product_price_point_id'] = 'product_price_point_id'
      @_hash['product_price_point_type'] = 'product_price_point_type'
      @_hash['next_product_price_point_id'] = 'next_product_price_point_id'
      @_hash['net_terms'] = 'net_terms'
      @_hash['stored_credential_transaction_id'] =
        'stored_credential_transaction_id'
      @_hash['reference'] = 'reference'
      @_hash['on_hold_at'] = 'on_hold_at'
      @_hash['prepaid_dunning'] = 'prepaid_dunning'
      @_hash['coupons'] = 'coupons'
      @_hash['dunning_communication_delay_enabled'] =
        'dunning_communication_delay_enabled'
      @_hash['dunning_communication_delay_time_zone'] =
        'dunning_communication_delay_time_zone'
      @_hash['receives_invoice_emails'] = 'receives_invoice_emails'
      @_hash['locale'] = 'locale'
      @_hash['currency'] = 'currency'
      @_hash['scheduled_cancellation_at'] = 'scheduled_cancellation_at'
      @_hash['credit_balance_in_cents'] = 'credit_balance_in_cents'
      @_hash['prepayment_balance_in_cents'] = 'prepayment_balance_in_cents'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        state
        balance_in_cents
        total_revenue_in_cents
        product_price_in_cents
        product_version_number
        current_period_ends_at
        next_assessment_at
        trial_started_at
        trial_ended_at
        activated_at
        expires_at
        created_at
        updated_at
        cancellation_message
        cancellation_method
        cancel_at_end_of_period
        canceled_at
        current_period_started_at
        previous_state
        signup_payment_id
        signup_revenue
        delayed_cancel_at
        coupon_code
        snap_day
        payment_collection_method
        customer
        product
        credit_card
        group
        bank_account
        payment_type
        referral_code
        next_product_id
        next_product_handle
        coupon_use_count
        coupon_uses_allowed
        reason_code
        automatically_resume_at
        coupon_codes
        offer_id
        payer_id
        current_billing_amount_in_cents
        product_price_point_id
        product_price_point_type
        next_product_price_point_id
        net_terms
        stored_credential_transaction_id
        reference
        on_hold_at
        prepaid_dunning
        coupons
        dunning_communication_delay_enabled
        dunning_communication_delay_time_zone
        receives_invoice_emails
        locale
        currency
        scheduled_cancellation_at
        credit_balance_in_cents
        prepayment_balance_in_cents
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        trial_started_at
        trial_ended_at
        expires_at
        cancellation_message
        cancellation_method
        cancel_at_end_of_period
        canceled_at
        delayed_cancel_at
        coupon_code
        snap_day
        payment_collection_method
        group
        payment_type
        referral_code
        next_product_id
        next_product_handle
        coupon_use_count
        coupon_uses_allowed
        reason_code
        automatically_resume_at
        offer_id
        next_product_price_point_id
        net_terms
        stored_credential_transaction_id
        reference
        on_hold_at
        dunning_communication_delay_time_zone
        receives_invoice_emails
        locale
        scheduled_cancellation_at
      ]
    end

    def initialize(id = SKIP,
                   state = SKIP,
                   balance_in_cents = SKIP,
                   total_revenue_in_cents = SKIP,
                   product_price_in_cents = SKIP,
                   product_version_number = SKIP,
                   current_period_ends_at = SKIP,
                   next_assessment_at = SKIP,
                   trial_started_at = SKIP,
                   trial_ended_at = SKIP,
                   activated_at = SKIP,
                   expires_at = SKIP,
                   created_at = SKIP,
                   updated_at = SKIP,
                   cancellation_message = SKIP,
                   cancellation_method = SKIP,
                   cancel_at_end_of_period = SKIP,
                   canceled_at = SKIP,
                   current_period_started_at = SKIP,
                   previous_state = SKIP,
                   signup_payment_id = SKIP,
                   signup_revenue = SKIP,
                   delayed_cancel_at = SKIP,
                   coupon_code = SKIP,
                   snap_day = SKIP,
                   payment_collection_method = SKIP,
                   customer = SKIP,
                   product = SKIP,
                   credit_card = SKIP,
                   group = SKIP,
                   bank_account = SKIP,
                   payment_type = SKIP,
                   referral_code = SKIP,
                   next_product_id = SKIP,
                   next_product_handle = SKIP,
                   coupon_use_count = SKIP,
                   coupon_uses_allowed = SKIP,
                   reason_code = SKIP,
                   automatically_resume_at = SKIP,
                   coupon_codes = SKIP,
                   offer_id = SKIP,
                   payer_id = SKIP,
                   current_billing_amount_in_cents = SKIP,
                   product_price_point_id = SKIP,
                   product_price_point_type = SKIP,
                   next_product_price_point_id = SKIP,
                   net_terms = SKIP,
                   stored_credential_transaction_id = SKIP,
                   reference = SKIP,
                   on_hold_at = SKIP,
                   prepaid_dunning = SKIP,
                   coupons = SKIP,
                   dunning_communication_delay_enabled = false,
                   dunning_communication_delay_time_zone = SKIP,
                   receives_invoice_emails = SKIP,
                   locale = SKIP,
                   currency = SKIP,
                   scheduled_cancellation_at = SKIP,
                   credit_balance_in_cents = SKIP,
                   prepayment_balance_in_cents = SKIP)
      @id = id unless id == SKIP
      @state = state unless state == SKIP
      @balance_in_cents = balance_in_cents unless balance_in_cents == SKIP
      @total_revenue_in_cents = total_revenue_in_cents unless total_revenue_in_cents == SKIP
      @product_price_in_cents = product_price_in_cents unless product_price_in_cents == SKIP
      @product_version_number = product_version_number unless product_version_number == SKIP
      @current_period_ends_at = current_period_ends_at unless current_period_ends_at == SKIP
      @next_assessment_at = next_assessment_at unless next_assessment_at == SKIP
      @trial_started_at = trial_started_at unless trial_started_at == SKIP
      @trial_ended_at = trial_ended_at unless trial_ended_at == SKIP
      @activated_at = activated_at unless activated_at == SKIP
      @expires_at = expires_at unless expires_at == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @cancellation_message = cancellation_message unless cancellation_message == SKIP
      @cancellation_method = cancellation_method unless cancellation_method == SKIP
      @cancel_at_end_of_period = cancel_at_end_of_period unless cancel_at_end_of_period == SKIP
      @canceled_at = canceled_at unless canceled_at == SKIP
      unless current_period_started_at == SKIP
        @current_period_started_at =
          current_period_started_at
      end
      @previous_state = previous_state unless previous_state == SKIP
      @signup_payment_id = signup_payment_id unless signup_payment_id == SKIP
      @signup_revenue = signup_revenue unless signup_revenue == SKIP
      @delayed_cancel_at = delayed_cancel_at unless delayed_cancel_at == SKIP
      @coupon_code = coupon_code unless coupon_code == SKIP
      @snap_day = snap_day unless snap_day == SKIP
      unless payment_collection_method == SKIP
        @payment_collection_method =
          payment_collection_method
      end
      @customer = customer unless customer == SKIP
      @product = product unless product == SKIP
      @credit_card = credit_card unless credit_card == SKIP
      @group = group unless group == SKIP
      @bank_account = bank_account unless bank_account == SKIP
      @payment_type = payment_type unless payment_type == SKIP
      @referral_code = referral_code unless referral_code == SKIP
      @next_product_id = next_product_id unless next_product_id == SKIP
      @next_product_handle = next_product_handle unless next_product_handle == SKIP
      @coupon_use_count = coupon_use_count unless coupon_use_count == SKIP
      @coupon_uses_allowed = coupon_uses_allowed unless coupon_uses_allowed == SKIP
      @reason_code = reason_code unless reason_code == SKIP
      @automatically_resume_at = automatically_resume_at unless automatically_resume_at == SKIP
      @coupon_codes = coupon_codes unless coupon_codes == SKIP
      @offer_id = offer_id unless offer_id == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      unless current_billing_amount_in_cents == SKIP
        @current_billing_amount_in_cents =
          current_billing_amount_in_cents
      end
      @product_price_point_id = product_price_point_id unless product_price_point_id == SKIP
      @product_price_point_type = product_price_point_type unless product_price_point_type == SKIP
      unless next_product_price_point_id == SKIP
        @next_product_price_point_id =
          next_product_price_point_id
      end
      @net_terms = net_terms unless net_terms == SKIP
      unless stored_credential_transaction_id == SKIP
        @stored_credential_transaction_id =
          stored_credential_transaction_id
      end
      @reference = reference unless reference == SKIP
      @on_hold_at = on_hold_at unless on_hold_at == SKIP
      @prepaid_dunning = prepaid_dunning unless prepaid_dunning == SKIP
      @coupons = coupons unless coupons == SKIP
      unless dunning_communication_delay_enabled == SKIP
        @dunning_communication_delay_enabled =
          dunning_communication_delay_enabled
      end
      unless dunning_communication_delay_time_zone == SKIP
        @dunning_communication_delay_time_zone =
          dunning_communication_delay_time_zone
      end
      @receives_invoice_emails = receives_invoice_emails unless receives_invoice_emails == SKIP
      @locale = locale unless locale == SKIP
      @currency = currency unless currency == SKIP
      unless scheduled_cancellation_at == SKIP
        @scheduled_cancellation_at =
          scheduled_cancellation_at
      end
      @credit_balance_in_cents = credit_balance_in_cents unless credit_balance_in_cents == SKIP
      unless prepayment_balance_in_cents == SKIP
        @prepayment_balance_in_cents =
          prepayment_balance_in_cents
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP
      balance_in_cents =
        hash.key?('balance_in_cents') ? hash['balance_in_cents'] : SKIP
      total_revenue_in_cents =
        hash.key?('total_revenue_in_cents') ? hash['total_revenue_in_cents'] : SKIP
      product_price_in_cents =
        hash.key?('product_price_in_cents') ? hash['product_price_in_cents'] : SKIP
      product_version_number =
        hash.key?('product_version_number') ? hash['product_version_number'] : SKIP
      current_period_ends_at =
        hash.key?('current_period_ends_at') ? hash['current_period_ends_at'] : SKIP
      next_assessment_at =
        hash.key?('next_assessment_at') ? hash['next_assessment_at'] : SKIP
      trial_started_at =
        hash.key?('trial_started_at') ? hash['trial_started_at'] : SKIP
      trial_ended_at =
        hash.key?('trial_ended_at') ? hash['trial_ended_at'] : SKIP
      activated_at = hash.key?('activated_at') ? hash['activated_at'] : SKIP
      expires_at = hash.key?('expires_at') ? hash['expires_at'] : SKIP
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP
      updated_at = hash.key?('updated_at') ? hash['updated_at'] : SKIP
      cancellation_message =
        hash.key?('cancellation_message') ? hash['cancellation_message'] : SKIP
      cancellation_method = hash.key?('cancellation_method') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionCancellationMethod), hash['cancellation_method']
      ) : SKIP
      cancel_at_end_of_period =
        hash.key?('cancel_at_end_of_period') ? hash['cancel_at_end_of_period'] : SKIP
      canceled_at = hash.key?('canceled_at') ? hash['canceled_at'] : SKIP
      current_period_started_at =
        hash.key?('current_period_started_at') ? hash['current_period_started_at'] : SKIP
      previous_state =
        hash.key?('previous_state') ? hash['previous_state'] : SKIP
      signup_payment_id =
        hash.key?('signup_payment_id') ? hash['signup_payment_id'] : SKIP
      signup_revenue =
        hash.key?('signup_revenue') ? hash['signup_revenue'] : SKIP
      delayed_cancel_at =
        hash.key?('delayed_cancel_at') ? hash['delayed_cancel_at'] : SKIP
      coupon_code = hash.key?('coupon_code') ? hash['coupon_code'] : SKIP
      snap_day = hash.key?('snap_day') ? hash['snap_day'] : SKIP
      payment_collection_method = hash.key?('payment_collection_method') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionPaymentCollectionMethod), hash['payment_collection_method']
      ) : SKIP
      customer = Customer.from_hash(hash['customer']) if hash['customer']
      product = Product.from_hash(hash['product']) if hash['product']
      credit_card = PaymentProfile.from_hash(hash['credit_card']) if hash['credit_card']
      group = hash.key?('group') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionGroup), hash['group']
      ) : SKIP
      bank_account = SubscriptionBankAccount.from_hash(hash['bank_account']) if
        hash['bank_account']
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : SKIP
      referral_code = hash.key?('referral_code') ? hash['referral_code'] : SKIP
      next_product_id =
        hash.key?('next_product_id') ? hash['next_product_id'] : SKIP
      next_product_handle =
        hash.key?('next_product_handle') ? hash['next_product_handle'] : SKIP
      coupon_use_count =
        hash.key?('coupon_use_count') ? hash['coupon_use_count'] : SKIP
      coupon_uses_allowed =
        hash.key?('coupon_uses_allowed') ? hash['coupon_uses_allowed'] : SKIP
      reason_code = hash.key?('reason_code') ? hash['reason_code'] : SKIP
      automatically_resume_at =
        hash.key?('automatically_resume_at') ? hash['automatically_resume_at'] : SKIP
      coupon_codes = hash.key?('coupon_codes') ? hash['coupon_codes'] : SKIP
      offer_id = hash.key?('offer_id') ? hash['offer_id'] : SKIP
      payer_id = hash.key?('payer_id') ? hash['payer_id'] : SKIP
      current_billing_amount_in_cents =
        hash.key?('current_billing_amount_in_cents') ? hash['current_billing_amount_in_cents'] : SKIP
      product_price_point_id =
        hash.key?('product_price_point_id') ? hash['product_price_point_id'] : SKIP
      product_price_point_type =
        hash.key?('product_price_point_type') ? hash['product_price_point_type'] : SKIP
      next_product_price_point_id =
        hash.key?('next_product_price_point_id') ? hash['next_product_price_point_id'] : SKIP
      net_terms = hash.key?('net_terms') ? hash['net_terms'] : SKIP
      stored_credential_transaction_id =
        hash.key?('stored_credential_transaction_id') ? hash['stored_credential_transaction_id'] : SKIP
      reference = hash.key?('reference') ? hash['reference'] : SKIP
      on_hold_at = hash.key?('on_hold_at') ? hash['on_hold_at'] : SKIP
      prepaid_dunning = hash.key?('prepaid_dunning') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionPrepaidDunning), hash['prepaid_dunning']
      ) : SKIP
      # Parameter is an array, so we need to iterate through it
      coupons = nil
      unless hash['coupons'].nil?
        coupons = []
        hash['coupons'].each do |structure|
          coupons << (SubscriptionIncludedCoupon.from_hash(structure) if structure)
        end
      end

      coupons = SKIP unless hash.key?('coupons')
      dunning_communication_delay_enabled =
        hash['dunning_communication_delay_enabled'] ||= false
      dunning_communication_delay_time_zone =
        hash.key?('dunning_communication_delay_time_zone') ? hash['dunning_communication_delay_time_zone'] : SKIP
      receives_invoice_emails =
        hash.key?('receives_invoice_emails') ? hash['receives_invoice_emails'] : SKIP
      locale = hash.key?('locale') ? hash['locale'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      scheduled_cancellation_at =
        hash.key?('scheduled_cancellation_at') ? hash['scheduled_cancellation_at'] : SKIP
      credit_balance_in_cents =
        hash.key?('credit_balance_in_cents') ? hash['credit_balance_in_cents'] : SKIP
      prepayment_balance_in_cents =
        hash.key?('prepayment_balance_in_cents') ? hash['prepayment_balance_in_cents'] : SKIP

      # Create object from extracted values.
      Subscription.new(id,
                       state,
                       balance_in_cents,
                       total_revenue_in_cents,
                       product_price_in_cents,
                       product_version_number,
                       current_period_ends_at,
                       next_assessment_at,
                       trial_started_at,
                       trial_ended_at,
                       activated_at,
                       expires_at,
                       created_at,
                       updated_at,
                       cancellation_message,
                       cancellation_method,
                       cancel_at_end_of_period,
                       canceled_at,
                       current_period_started_at,
                       previous_state,
                       signup_payment_id,
                       signup_revenue,
                       delayed_cancel_at,
                       coupon_code,
                       snap_day,
                       payment_collection_method,
                       customer,
                       product,
                       credit_card,
                       group,
                       bank_account,
                       payment_type,
                       referral_code,
                       next_product_id,
                       next_product_handle,
                       coupon_use_count,
                       coupon_uses_allowed,
                       reason_code,
                       automatically_resume_at,
                       coupon_codes,
                       offer_id,
                       payer_id,
                       current_billing_amount_in_cents,
                       product_price_point_id,
                       product_price_point_type,
                       next_product_price_point_id,
                       net_terms,
                       stored_credential_transaction_id,
                       reference,
                       on_hold_at,
                       prepaid_dunning,
                       coupons,
                       dunning_communication_delay_enabled,
                       dunning_communication_delay_time_zone,
                       receives_invoice_emails,
                       locale,
                       currency,
                       scheduled_cancellation_at,
                       credit_balance_in_cents,
                       prepayment_balance_in_cents)
    end

    # Validates an instance of the object from a given value.
    # @param [Subscription | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
