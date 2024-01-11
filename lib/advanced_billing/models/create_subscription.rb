# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # CreateSubscription Model.
  class CreateSubscription < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The API Handle of the product for which you are creating a subscription.
    # Required, unless a `product_id` is given instead.
    # @return [String]
    attr_accessor :product_handle

    # The Product ID of the product for which you are creating a subscription.
    # The product ID is not currently published, so we recommend using the API
    # Handle instead.
    # @return [Integer]
    attr_accessor :product_id

    # The user-friendly API handle of a product's particular price point.
    # @return [String]
    attr_accessor :product_price_point_handle

    # The ID of the particular price point on the product.
    # @return [Integer]
    attr_accessor :product_price_point_id

    # (Optional) Used in place of `product_price_point_id` to define a custom
    # price point unique to the subscription
    # @return [SubscriptionCustomPrice]
    attr_accessor :custom_price

    # (deprecated) The coupon code of the single coupon currently applied to the
    # subscription. See coupon_codes instead as subscriptions can now have more
    # than one coupon.
    # @return [String]
    attr_accessor :coupon_code

    # An array for all the coupons attached to the subscription.
    # @return [Array[String]]
    attr_accessor :coupon_codes

    # The type of payment collection to be used in the subscription. For legacy
    # Statements Architecture valid options are - `invoice`, `automatic`. For
    # current Relationship Invoicing Architecture valid options are -
    # `remittance`, `automatic`, `prepaid`.
    # @return [PaymentCollectionMethod]
    attr_accessor :payment_collection_method

    # (Optional) Default: True - Whether or not this subscription is set to
    # receive emails related to this subscription.
    # @return [String]
    attr_accessor :receives_invoice_emails

    # (Optional) Default: null The number of days after renewal (on invoice
    # billing) that a subscription is due. A value between 0 (due immediately)
    # and 180.
    # @return [String]
    attr_accessor :net_terms

    # The ID of an existing customer within Chargify. Required, unless a
    # `customer_reference` or a set of `customer_attributes` is given.
    # @return [Integer]
    attr_accessor :customer_id

    # (Optional) Set this attribute to a future date/time to sync imported
    # subscriptions to your existing renewal schedule. See the notes on
    # “Date/Time Format” in our [subscription import
    # documentation](https://maxio-chargify.zendesk.com/hc/en-us/articles/540486
    # 3655821#date-format). If you provide a next_billing_at timestamp that is
    # in the future, no trial or initial charges will be applied when you create
    # the subscription. In fact, no payment will be captured at all. The first
    # payment will be captured, according to the prices defined by the product,
    # near the time specified by next_billing_at. If you do not provide a value
    # for next_billing_at, any trial and/or initial charges will be assessed and
    # charged at the time of subscription creation. If the card cannot be
    # successfully charged, the subscription will not be created. See further
    # notes in the section on Importing Subscriptions.
    # @return [DateTime]
    attr_accessor :next_billing_at

    # (Optional) Set this attribute to a future date/time to create a
    # subscription in the "Awaiting Signup" state, rather than "Active" or
    # "Trialing". See the notes on “Date/Time Format” in our [subscription
    # import
    # documentation](https://maxio-chargify.zendesk.com/hc/en-us/articles/540486
    # 3655821#date-format). In the "Awaiting Signup" state, a subscription
    # behaves like any other. It can be canceled, allocated to, had its billing
    # date changed. etc. When the initial_billing_at date hits, the subscription
    # will transition to the expected state. If the product has a trial, the
    # subscription will enter a trial, otherwise it will go active. Setup fees
    # will be respected either before or after the trial, as configured on the
    # price point. If the payment is due at the initial_billing_at and it fails
    # the subscription will be immediately canceled. See further notes in the
    # section on Delayed Signups.
    # @return [String]
    attr_accessor :initial_billing_at

    # For European sites subject to PSD2 and using 3D Secure, this can be used
    # to reference a previous transaction for the customer. This will ensure the
    # card will be charged successfully at renewal.
    # @return [Integer]
    attr_accessor :stored_credential_transaction_id

    # For European sites subject to PSD2 and using 3D Secure, this can be used
    # to reference a previous transaction for the customer. This will ensure the
    # card will be charged successfully at renewal.
    # @return [Integer]
    attr_accessor :sales_rep_id

    # The Payment Profile ID of an existing card or bank account, which belongs
    # to an existing customer to use for payment for this subscription. If the
    # card, bank account, or customer does not exist already, or if you want to
    # use a new (unstored) card or bank account for the subscription, use
    # `payment_profile_attributes` instead to create a new payment profile along
    # with the subscription. (This value is available on an existing
    # subscription via the API as `credit_card` > id or `bank_account` > id)
    # @return [Integer]
    attr_accessor :payment_profile_id

    # The reference value (provided by your app) for the subscription itelf.
    # @return [String]
    attr_accessor :reference

    # The reference value (provided by your app) for the subscription itelf.
    # @return [CustomerAttributes]
    attr_accessor :customer_attributes

    # alias to credit_card_attributes
    # @return [PaymentProfileAttributes]
    attr_accessor :payment_profile_attributes

    # Credit Card data to create a new Subscription. Interchangeable with
    # `payment_profile_attributes` property.
    # @return [PaymentProfileAttributes]
    attr_accessor :credit_card_attributes

    # Credit Card data to create a new Subscription. Interchangeable with
    # `payment_profile_attributes` property.
    # @return [BankAccountAttributes]
    attr_accessor :bank_account_attributes

    # (Optional) An array of component ids and quantities to be added to the
    # subscription. See
    # [Components](https://maxio-chargify.zendesk.com/hc/en-us/articles/54050206
    # 25677) for more information.
    # @return [Array[CreateSubscriptionComponent]]
    attr_accessor :components

    # (Optional). Cannot be used when also specifying next_billing_at
    # @return [CalendarBilling]
    attr_accessor :calendar_billing

    # (Optional) A set of key/value pairs representing custom fields and their
    # values. Metafields will be created “on-the-fly” in your site for a given
    # key, if they have not been created yet.
    # @return [Hash[String, String]]
    attr_accessor :metafields

    # The reference value (provided by your app) of an existing customer within
    # Chargify. Required, unless a `customer_id` or a set of
    # `customer_attributes` is given.
    # @return [String]
    attr_accessor :customer_reference

    # The reference value (provided by your app) of an existing customer within
    # Chargify. Required, unless a `customer_id` or a set of
    # `customer_attributes` is given.
    # @return [GroupSettings]
    attr_accessor :group

    # A valid referral code. (optional, see
    # [Referrals](https://maxio-chargify.zendesk.com/hc/en-us/articles/540542020
    # 4045-Referrals-Reference#how-to-obtain-referral-codes) for more details).
    # If supplied, must be valid, or else subscription creation will fail.
    # @return [String]
    attr_accessor :ref

    # (Optional) Can be used when canceling a subscription (via the HTTP DELETE
    # method) to make a note about the reason for cancellation.
    # @return [String]
    attr_accessor :cancellation_message

    # (Optional) Can be used when canceling a subscription (via the HTTP DELETE
    # method) to make a note about how the subscription was canceled.
    # @return [String]
    attr_accessor :cancellation_method

    # (Optional) If Multi-Currency is enabled and the currency is configured in
    # Chargify, pass it at signup to create a subscription on a non-default
    # currency. Note that you cannot update the currency of an existing
    # subscription.
    # @return [String]
    attr_accessor :currency

    # Timestamp giving the expiration date of this subscription (if any). You
    # may manually change the expiration date at any point during a subscription
    # period.
    # @return [DateTime]
    attr_accessor :expires_at

    # (Optional, default false) When set to true, and when next_billing_at is
    # present, if the subscription expires, the expires_at will be shifted by
    # the same amount of time as the difference between the old and new “next
    # billing” dates.
    # @return [String]
    attr_accessor :expiration_tracks_next_billing_change

    # (Optional) The ACH authorization agreement terms. If enabled, an email
    # will be sent to the customer with a copy of the terms.
    # @return [String]
    attr_accessor :agreement_terms

    # (Optional) The first name of the person authorizing the ACH agreement.
    # @return [String]
    attr_accessor :authorizer_first_name

    # (Optional) The last name of the person authorizing the ACH agreement.
    # @return [String]
    attr_accessor :authorizer_last_name

    # (Optional) One of “prorated” (the default – the prorated product price
    # will be charged immediately), “immediate” (the full product price will be
    # charged immediately), or “delayed” (the full product price will be charged
    # with the first scheduled renewal).
    # @return [String]
    attr_accessor :calendar_billing_first_charge

    # (Optional) Can be used when canceling a subscription (via the HTTP DELETE
    # method) to indicate why a subscription was canceled.
    # @return [String]
    attr_accessor :reason_code

    # (Optional, used only for Delayed Product Change When set to true,
    # indicates that a changed value for product_handle should schedule the
    # product change to the next subscription renewal.
    # @return [TrueClass | FalseClass]
    attr_accessor :product_change_delayed

    # Use in place of passing product and component information to set up the
    # subscription with an existing offer. May be either the Chargify id of the
    # offer or its handle prefixed with `handle:`.er
    # @return [Object]
    attr_accessor :offer_id

    # Use in place of passing product and component information to set up the
    # subscription with an existing offer. May be either the Chargify id of the
    # offer or its handle prefixed with `handle:`.er
    # @return [UpsertPrepaidConfiguration]
    attr_accessor :prepaid_configuration

    # Providing a previous_billing_at that is in the past will set the
    # current_period_starts_at when the subscription is created. It will also
    # set activated_at if not explicitly passed during the subscription import.
    # Can only be used if next_billing_at is also passed. Using this option will
    # allow you to set the period start for the subscription so mid period
    # component allocations have the correct prorated amount.
    # @return [DateTime]
    attr_accessor :previous_billing_at

    # Setting this attribute to true will cause the subscription's MRR to be
    # added to your MRR analytics immediately. For this value to be honored, a
    # next_billing_at must be present and set to a future date. This key/value
    # will not be returned in the subscription response body.
    # @return [TrueClass | FalseClass]
    attr_accessor :import_mrr

    # Setting this attribute to true will cause the subscription's MRR to be
    # added to your MRR analytics immediately. For this value to be honored, a
    # next_billing_at must be present and set to a future date. This key/value
    # will not be returned in the subscription response body.
    # @return [String]
    attr_accessor :canceled_at

    # Setting this attribute to true will cause the subscription's MRR to be
    # added to your MRR analytics immediately. For this value to be honored, a
    # next_billing_at must be present and set to a future date. This key/value
    # will not be returned in the subscription response body.
    # @return [DateTime]
    attr_accessor :activated_at

    # Required when creating a subscription with Maxio Payments.
    # @return [AgreementAcceptance]
    attr_accessor :agreement_acceptance

    # (Optional) If passed, the proof of the authorized ACH agreement terms will
    # be persisted.
    # @return [ACHAgreement]
    attr_accessor :ach_agreement

    # Enable Communication Delay feature, making sure no communication (email or
    # SMS) is sent to the Customer between 9PM and 8AM in time zone set by the
    # `dunning_communication_delay_time_zone` attribute.
    # @return [TrueClass | FalseClass]
    attr_accessor :dunning_communication_delay_enabled

    # Time zone for the Dunning Communication Delay feature.
    # @return [String]
    attr_accessor :dunning_communication_delay_time_zone

    # Valid only for the Subscription Preview endpoint. When set to `true` it
    # skips calculating taxes for the current and next billing manifests.
    # @return [TrueClass | FalseClass]
    attr_accessor :skip_billing_manifest_taxes

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['product_handle'] = 'product_handle'
      @_hash['product_id'] = 'product_id'
      @_hash['product_price_point_handle'] = 'product_price_point_handle'
      @_hash['product_price_point_id'] = 'product_price_point_id'
      @_hash['custom_price'] = 'custom_price'
      @_hash['coupon_code'] = 'coupon_code'
      @_hash['coupon_codes'] = 'coupon_codes'
      @_hash['payment_collection_method'] = 'payment_collection_method'
      @_hash['receives_invoice_emails'] = 'receives_invoice_emails'
      @_hash['net_terms'] = 'net_terms'
      @_hash['customer_id'] = 'customer_id'
      @_hash['next_billing_at'] = 'next_billing_at'
      @_hash['initial_billing_at'] = 'initial_billing_at'
      @_hash['stored_credential_transaction_id'] =
        'stored_credential_transaction_id'
      @_hash['sales_rep_id'] = 'sales_rep_id'
      @_hash['payment_profile_id'] = 'payment_profile_id'
      @_hash['reference'] = 'reference'
      @_hash['customer_attributes'] = 'customer_attributes'
      @_hash['payment_profile_attributes'] = 'payment_profile_attributes'
      @_hash['credit_card_attributes'] = 'credit_card_attributes'
      @_hash['bank_account_attributes'] = 'bank_account_attributes'
      @_hash['components'] = 'components'
      @_hash['calendar_billing'] = 'calendar_billing'
      @_hash['metafields'] = 'metafields'
      @_hash['customer_reference'] = 'customer_reference'
      @_hash['group'] = 'group'
      @_hash['ref'] = 'ref'
      @_hash['cancellation_message'] = 'cancellation_message'
      @_hash['cancellation_method'] = 'cancellation_method'
      @_hash['currency'] = 'currency'
      @_hash['expires_at'] = 'expires_at'
      @_hash['expiration_tracks_next_billing_change'] =
        'expiration_tracks_next_billing_change'
      @_hash['agreement_terms'] = 'agreement_terms'
      @_hash['authorizer_first_name'] = 'authorizer_first_name'
      @_hash['authorizer_last_name'] = 'authorizer_last_name'
      @_hash['calendar_billing_first_charge'] =
        'calendar_billing_first_charge'
      @_hash['reason_code'] = 'reason_code'
      @_hash['product_change_delayed'] = 'product_change_delayed'
      @_hash['offer_id'] = 'offer_id'
      @_hash['prepaid_configuration'] = 'prepaid_configuration'
      @_hash['previous_billing_at'] = 'previous_billing_at'
      @_hash['import_mrr'] = 'import_mrr'
      @_hash['canceled_at'] = 'canceled_at'
      @_hash['activated_at'] = 'activated_at'
      @_hash['agreement_acceptance'] = 'agreement_acceptance'
      @_hash['ach_agreement'] = 'ach_agreement'
      @_hash['dunning_communication_delay_enabled'] =
        'dunning_communication_delay_enabled'
      @_hash['dunning_communication_delay_time_zone'] =
        'dunning_communication_delay_time_zone'
      @_hash['skip_billing_manifest_taxes'] = 'skip_billing_manifest_taxes'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        product_handle
        product_id
        product_price_point_handle
        product_price_point_id
        custom_price
        coupon_code
        coupon_codes
        payment_collection_method
        receives_invoice_emails
        net_terms
        customer_id
        next_billing_at
        initial_billing_at
        stored_credential_transaction_id
        sales_rep_id
        payment_profile_id
        reference
        customer_attributes
        payment_profile_attributes
        credit_card_attributes
        bank_account_attributes
        components
        calendar_billing
        metafields
        customer_reference
        group
        ref
        cancellation_message
        cancellation_method
        currency
        expires_at
        expiration_tracks_next_billing_change
        agreement_terms
        authorizer_first_name
        authorizer_last_name
        calendar_billing_first_charge
        reason_code
        product_change_delayed
        offer_id
        prepaid_configuration
        previous_billing_at
        import_mrr
        canceled_at
        activated_at
        agreement_acceptance
        ach_agreement
        dunning_communication_delay_enabled
        dunning_communication_delay_time_zone
        skip_billing_manifest_taxes
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        dunning_communication_delay_enabled
        dunning_communication_delay_time_zone
      ]
    end

    def initialize(product_handle = SKIP,
                   product_id = SKIP,
                   product_price_point_handle = SKIP,
                   product_price_point_id = SKIP,
                   custom_price = SKIP,
                   coupon_code = SKIP,
                   coupon_codes = SKIP,
                   payment_collection_method = PaymentCollectionMethod::AUTOMATIC,
                   receives_invoice_emails = SKIP,
                   net_terms = SKIP,
                   customer_id = SKIP,
                   next_billing_at = SKIP,
                   initial_billing_at = SKIP,
                   stored_credential_transaction_id = SKIP,
                   sales_rep_id = SKIP,
                   payment_profile_id = SKIP,
                   reference = SKIP,
                   customer_attributes = SKIP,
                   payment_profile_attributes = SKIP,
                   credit_card_attributes = SKIP,
                   bank_account_attributes = SKIP,
                   components = SKIP,
                   calendar_billing = SKIP,
                   metafields = SKIP,
                   customer_reference = SKIP,
                   group = SKIP,
                   ref = SKIP,
                   cancellation_message = SKIP,
                   cancellation_method = SKIP,
                   currency = SKIP,
                   expires_at = SKIP,
                   expiration_tracks_next_billing_change = SKIP,
                   agreement_terms = SKIP,
                   authorizer_first_name = SKIP,
                   authorizer_last_name = SKIP,
                   calendar_billing_first_charge = SKIP,
                   reason_code = SKIP,
                   product_change_delayed = SKIP,
                   offer_id = SKIP,
                   prepaid_configuration = SKIP,
                   previous_billing_at = SKIP,
                   import_mrr = SKIP,
                   canceled_at = SKIP,
                   activated_at = SKIP,
                   agreement_acceptance = SKIP,
                   ach_agreement = SKIP,
                   dunning_communication_delay_enabled = false,
                   dunning_communication_delay_time_zone = SKIP,
                   skip_billing_manifest_taxes = false)
      @product_handle = product_handle unless product_handle == SKIP
      @product_id = product_id unless product_id == SKIP
      unless product_price_point_handle == SKIP
        @product_price_point_handle =
          product_price_point_handle
      end
      @product_price_point_id = product_price_point_id unless product_price_point_id == SKIP
      @custom_price = custom_price unless custom_price == SKIP
      @coupon_code = coupon_code unless coupon_code == SKIP
      @coupon_codes = coupon_codes unless coupon_codes == SKIP
      unless payment_collection_method == SKIP
        @payment_collection_method =
          payment_collection_method
      end
      @receives_invoice_emails = receives_invoice_emails unless receives_invoice_emails == SKIP
      @net_terms = net_terms unless net_terms == SKIP
      @customer_id = customer_id unless customer_id == SKIP
      @next_billing_at = next_billing_at unless next_billing_at == SKIP
      @initial_billing_at = initial_billing_at unless initial_billing_at == SKIP
      unless stored_credential_transaction_id == SKIP
        @stored_credential_transaction_id =
          stored_credential_transaction_id
      end
      @sales_rep_id = sales_rep_id unless sales_rep_id == SKIP
      @payment_profile_id = payment_profile_id unless payment_profile_id == SKIP
      @reference = reference unless reference == SKIP
      @customer_attributes = customer_attributes unless customer_attributes == SKIP
      unless payment_profile_attributes == SKIP
        @payment_profile_attributes =
          payment_profile_attributes
      end
      @credit_card_attributes = credit_card_attributes unless credit_card_attributes == SKIP
      @bank_account_attributes = bank_account_attributes unless bank_account_attributes == SKIP
      @components = components unless components == SKIP
      @calendar_billing = calendar_billing unless calendar_billing == SKIP
      @metafields = metafields unless metafields == SKIP
      @customer_reference = customer_reference unless customer_reference == SKIP
      @group = group unless group == SKIP
      @ref = ref unless ref == SKIP
      @cancellation_message = cancellation_message unless cancellation_message == SKIP
      @cancellation_method = cancellation_method unless cancellation_method == SKIP
      @currency = currency unless currency == SKIP
      @expires_at = expires_at unless expires_at == SKIP
      unless expiration_tracks_next_billing_change == SKIP
        @expiration_tracks_next_billing_change =
          expiration_tracks_next_billing_change
      end
      @agreement_terms = agreement_terms unless agreement_terms == SKIP
      @authorizer_first_name = authorizer_first_name unless authorizer_first_name == SKIP
      @authorizer_last_name = authorizer_last_name unless authorizer_last_name == SKIP
      unless calendar_billing_first_charge == SKIP
        @calendar_billing_first_charge =
          calendar_billing_first_charge
      end
      @reason_code = reason_code unless reason_code == SKIP
      @product_change_delayed = product_change_delayed unless product_change_delayed == SKIP
      @offer_id = offer_id unless offer_id == SKIP
      @prepaid_configuration = prepaid_configuration unless prepaid_configuration == SKIP
      @previous_billing_at = previous_billing_at unless previous_billing_at == SKIP
      @import_mrr = import_mrr unless import_mrr == SKIP
      @canceled_at = canceled_at unless canceled_at == SKIP
      @activated_at = activated_at unless activated_at == SKIP
      @agreement_acceptance = agreement_acceptance unless agreement_acceptance == SKIP
      @ach_agreement = ach_agreement unless ach_agreement == SKIP
      unless dunning_communication_delay_enabled == SKIP
        @dunning_communication_delay_enabled =
          dunning_communication_delay_enabled
      end
      unless dunning_communication_delay_time_zone == SKIP
        @dunning_communication_delay_time_zone =
          dunning_communication_delay_time_zone
      end
      unless skip_billing_manifest_taxes == SKIP
        @skip_billing_manifest_taxes =
          skip_billing_manifest_taxes
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      product_handle =
        hash.key?('product_handle') ? hash['product_handle'] : SKIP
      product_id = hash.key?('product_id') ? hash['product_id'] : SKIP
      product_price_point_handle =
        hash.key?('product_price_point_handle') ? hash['product_price_point_handle'] : SKIP
      product_price_point_id =
        hash.key?('product_price_point_id') ? hash['product_price_point_id'] : SKIP
      custom_price = SubscriptionCustomPrice.from_hash(hash['custom_price']) if
        hash['custom_price']
      coupon_code = hash.key?('coupon_code') ? hash['coupon_code'] : SKIP
      coupon_codes = hash.key?('coupon_codes') ? hash['coupon_codes'] : SKIP
      payment_collection_method =
        hash['payment_collection_method'] ||= PaymentCollectionMethod::AUTOMATIC
      receives_invoice_emails =
        hash.key?('receives_invoice_emails') ? hash['receives_invoice_emails'] : SKIP
      net_terms = hash.key?('net_terms') ? hash['net_terms'] : SKIP
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : SKIP
      next_billing_at = if hash.key?('next_billing_at')
                          (DateTimeHelper.from_rfc3339(hash['next_billing_at']) if hash['next_billing_at'])
                        else
                          SKIP
                        end
      initial_billing_at =
        hash.key?('initial_billing_at') ? hash['initial_billing_at'] : SKIP
      stored_credential_transaction_id =
        hash.key?('stored_credential_transaction_id') ? hash['stored_credential_transaction_id'] : SKIP
      sales_rep_id = hash.key?('sales_rep_id') ? hash['sales_rep_id'] : SKIP
      payment_profile_id =
        hash.key?('payment_profile_id') ? hash['payment_profile_id'] : SKIP
      reference = hash.key?('reference') ? hash['reference'] : SKIP
      customer_attributes = CustomerAttributes.from_hash(hash['customer_attributes']) if
        hash['customer_attributes']
      if hash['payment_profile_attributes']
        payment_profile_attributes = PaymentProfileAttributes.from_hash(hash['payment_profile_attributes'])
      end
      credit_card_attributes = PaymentProfileAttributes.from_hash(hash['credit_card_attributes']) if
        hash['credit_card_attributes']
      bank_account_attributes = BankAccountAttributes.from_hash(hash['bank_account_attributes']) if
        hash['bank_account_attributes']
      # Parameter is an array, so we need to iterate through it
      components = nil
      unless hash['components'].nil?
        components = []
        hash['components'].each do |structure|
          components << (CreateSubscriptionComponent.from_hash(structure) if structure)
        end
      end

      components = SKIP unless hash.key?('components')
      calendar_billing = CalendarBilling.from_hash(hash['calendar_billing']) if
        hash['calendar_billing']
      metafields = hash.key?('metafields') ? hash['metafields'] : SKIP
      customer_reference =
        hash.key?('customer_reference') ? hash['customer_reference'] : SKIP
      group = GroupSettings.from_hash(hash['group']) if hash['group']
      ref = hash.key?('ref') ? hash['ref'] : SKIP
      cancellation_message =
        hash.key?('cancellation_message') ? hash['cancellation_message'] : SKIP
      cancellation_method =
        hash.key?('cancellation_method') ? hash['cancellation_method'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      expires_at = if hash.key?('expires_at')
                     (DateTimeHelper.from_rfc3339(hash['expires_at']) if hash['expires_at'])
                   else
                     SKIP
                   end
      expiration_tracks_next_billing_change =
        hash.key?('expiration_tracks_next_billing_change') ? hash['expiration_tracks_next_billing_change'] : SKIP
      agreement_terms =
        hash.key?('agreement_terms') ? hash['agreement_terms'] : SKIP
      authorizer_first_name =
        hash.key?('authorizer_first_name') ? hash['authorizer_first_name'] : SKIP
      authorizer_last_name =
        hash.key?('authorizer_last_name') ? hash['authorizer_last_name'] : SKIP
      calendar_billing_first_charge =
        hash.key?('calendar_billing_first_charge') ? hash['calendar_billing_first_charge'] : SKIP
      reason_code = hash.key?('reason_code') ? hash['reason_code'] : SKIP
      product_change_delayed =
        hash.key?('product_change_delayed') ? hash['product_change_delayed'] : SKIP
      offer_id = hash.key?('offer_id') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateSubscriptionOfferId), hash['offer_id']
      ) : SKIP
      prepaid_configuration = UpsertPrepaidConfiguration.from_hash(hash['prepaid_configuration']) if
        hash['prepaid_configuration']
      previous_billing_at = if hash.key?('previous_billing_at')
                              (DateTimeHelper.from_rfc3339(hash['previous_billing_at']) if hash['previous_billing_at'])
                            else
                              SKIP
                            end
      import_mrr = hash.key?('import_mrr') ? hash['import_mrr'] : SKIP
      canceled_at = hash.key?('canceled_at') ? hash['canceled_at'] : SKIP
      activated_at = if hash.key?('activated_at')
                       (DateTimeHelper.from_rfc3339(hash['activated_at']) if hash['activated_at'])
                     else
                       SKIP
                     end
      agreement_acceptance = AgreementAcceptance.from_hash(hash['agreement_acceptance']) if
        hash['agreement_acceptance']
      ach_agreement = ACHAgreement.from_hash(hash['ach_agreement']) if hash['ach_agreement']
      dunning_communication_delay_enabled =
        hash['dunning_communication_delay_enabled'] ||= false
      dunning_communication_delay_time_zone =
        hash.key?('dunning_communication_delay_time_zone') ? hash['dunning_communication_delay_time_zone'] : SKIP
      skip_billing_manifest_taxes =
        hash['skip_billing_manifest_taxes'] ||= false

      # Create object from extracted values.
      CreateSubscription.new(product_handle,
                             product_id,
                             product_price_point_handle,
                             product_price_point_id,
                             custom_price,
                             coupon_code,
                             coupon_codes,
                             payment_collection_method,
                             receives_invoice_emails,
                             net_terms,
                             customer_id,
                             next_billing_at,
                             initial_billing_at,
                             stored_credential_transaction_id,
                             sales_rep_id,
                             payment_profile_id,
                             reference,
                             customer_attributes,
                             payment_profile_attributes,
                             credit_card_attributes,
                             bank_account_attributes,
                             components,
                             calendar_billing,
                             metafields,
                             customer_reference,
                             group,
                             ref,
                             cancellation_message,
                             cancellation_method,
                             currency,
                             expires_at,
                             expiration_tracks_next_billing_change,
                             agreement_terms,
                             authorizer_first_name,
                             authorizer_last_name,
                             calendar_billing_first_charge,
                             reason_code,
                             product_change_delayed,
                             offer_id,
                             prepaid_configuration,
                             previous_billing_at,
                             import_mrr,
                             canceled_at,
                             activated_at,
                             agreement_acceptance,
                             ach_agreement,
                             dunning_communication_delay_enabled,
                             dunning_communication_delay_time_zone,
                             skip_billing_manifest_taxes)
    end

    def to_next_billing_at
      DateTimeHelper.to_rfc3339(next_billing_at)
    end

    def to_expires_at
      DateTimeHelper.to_rfc3339(expires_at)
    end

    def to_previous_billing_at
      DateTimeHelper.to_rfc3339(previous_billing_at)
    end

    def to_activated_at
      DateTimeHelper.to_rfc3339(activated_at)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateSubscription | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
