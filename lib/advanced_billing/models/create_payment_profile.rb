# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreatePaymentProfile Model.
  class CreatePaymentProfile < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Token received after sending billing informations using chargify.js.
    # @return [String]
    attr_accessor :chargify_token

    # Token received after sending billing informations using chargify.js.
    # @return [Integer]
    attr_accessor :id

    # Token received after sending billing informations using chargify.js.
    # @return [PaymentType]
    attr_accessor :payment_type

    # First name on card or bank account. If omitted, the first_name from
    # customer attributes will be used.
    # @return [String]
    attr_accessor :first_name

    # Last name on card or bank account. If omitted, the last_name from customer
    # attributes will be used.
    # @return [String]
    attr_accessor :last_name

    # Last name on card or bank account. If omitted, the last_name from customer
    # attributes will be used.
    # @return [String]
    attr_accessor :masked_card_number

    # The full credit card number
    # @return [String]
    attr_accessor :full_number

    # The type of card used.
    # @return [CardType]
    attr_accessor :card_type

    # (Optional when performing an Import via vault_token, required otherwise)
    # The 1- or 2-digit credit card expiration month, as an integer or string,
    # i.e. 5
    # @return [Object]
    attr_accessor :expiration_month

    # (Optional when performing a Import via vault_token, required otherwise)
    # The 4-digit credit card expiration year, as an integer or string, i.e.
    # 2012
    # @return [Object]
    attr_accessor :expiration_year

    # The credit card or bank account billing street address (i.e. 123 Main
    # St.). This value is merely passed through to the payment gateway.
    # @return [String]
    attr_accessor :billing_address

    # Second line of the customer’s billing address i.e. Apt. 100
    # @return [String]
    attr_accessor :billing_address_2

    # The credit card or bank account billing address city (i.e. “Boston”). This
    # value is merely passed through to the payment gateway.
    # @return [String]
    attr_accessor :billing_city

    # The credit card or bank account billing address state (i.e. MA). This
    # value is merely passed through to the payment gateway. This must conform
    # to the
    # [ISO_3166-1](https://en.wikipedia.org/wiki/ISO_3166-1#Current_codes) in
    # order to be valid for tax locale purposes.
    # @return [String]
    attr_accessor :billing_state

    # The credit card or bank account billing address country, required in
    # [ISO_3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
    # format (i.e. “US”). This value is merely passed through to the payment
    # gateway. Some gateways require country codes in a specific format. Please
    # check your gateway’s documentation. If creating an ACH subscription, only
    # US is supported at this time.
    # @return [String]
    attr_accessor :billing_country

    # The credit card or bank account billing address zip code (i.e. 12345).
    # This value is merely passed through to the payment gateway.
    # @return [String]
    attr_accessor :billing_zip

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [AllVaults]
    attr_accessor :current_vault

    # The “token” provided by your vault storage for an already stored payment
    # profile
    # @return [String]
    attr_accessor :vault_token

    # (only for Authorize.Net CIM storage or Square) The customerProfileId for
    # the owner of the customerPaymentProfileId provided as the vault_token
    # @return [String]
    attr_accessor :customer_vault_token

    # (Required when creating a new payment profile) The Chargify customer id.
    # @return [Integer]
    attr_accessor :customer_id

    # used by merchants that implemented BraintreeBlue javaScript libraries on
    # their own. We recommend using Chargify.js instead.
    # @return [String]
    attr_accessor :paypal_email

    # used by merchants that implemented BraintreeBlue javaScript libraries on
    # their own. We recommend using Chargify.js instead.
    # @return [String]
    attr_accessor :payment_method_nonce

    # This attribute is only available if MultiGateway feature is enabled for
    # your Site. This feature is in the Private Beta currently. gateway_handle
    # is used to directly select a gateway where a payment profile will be
    # stored in. Every connected gateway must have a unique gateway handle
    # specified. Read [Multigateway
    # description](https://chargify.zendesk.com/hc/en-us/articles/4407761759643#
    # connecting-with-multiple-gateways) to learn more about new concepts that
    # MultiGateway introduces and the default behavior when this attribute is
    # not passed.
    # @return [String]
    attr_accessor :gateway_handle

    # The 3- or 4-digit Card Verification Value. This value is merely passed
    # through to the payment gateway.
    # @return [String]
    attr_accessor :cvv

    # (Required when creating with ACH or GoCardless, optional with Stripe
    # Direct Debit). The name of the bank where the customerʼs account resides
    # @return [String]
    attr_accessor :bank_name

    # (Optional when creating with GoCardless, required with Stripe Direct
    # Debit). International Bank Account Number. Alternatively, local bank
    # details can be provided
    # @return [String]
    attr_accessor :bank_iban

    # (Required when creating with ACH. Optional when creating a subscription
    # with GoCardless). The routing number of the bank. It becomes bank_code
    # while passing via GoCardless API
    # @return [String]
    attr_accessor :bank_routing_number

    # (Required when creating with ACH, GoCardless, Stripe BECS or BACS Direct
    # Debit, and bank_iban is blank) The customerʼs bank account number
    # @return [String]
    attr_accessor :bank_account_number

    # (Optional when creating with GoCardless, required with Stripe BECS or BACS
    # Direct Debit) Branch/Sort code. Alternatively, an IBAN can be provided
    # @return [String]
    attr_accessor :bank_branch_code

    # Defaults to checking
    # @return [BankAccountType]
    attr_accessor :bank_account_type

    # Defaults to personal
    # @return [BankAccountHolderType]
    attr_accessor :bank_account_holder_type

    # (Optional) Used for creating subscription with payment profile imported
    # using vault_token, for proper display in Advanced Billing UI
    # @return [String]
    attr_accessor :last_four

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['chargify_token'] = 'chargify_token'
      @_hash['id'] = 'id'
      @_hash['payment_type'] = 'payment_type'
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['masked_card_number'] = 'masked_card_number'
      @_hash['full_number'] = 'full_number'
      @_hash['card_type'] = 'card_type'
      @_hash['expiration_month'] = 'expiration_month'
      @_hash['expiration_year'] = 'expiration_year'
      @_hash['billing_address'] = 'billing_address'
      @_hash['billing_address_2'] = 'billing_address_2'
      @_hash['billing_city'] = 'billing_city'
      @_hash['billing_state'] = 'billing_state'
      @_hash['billing_country'] = 'billing_country'
      @_hash['billing_zip'] = 'billing_zip'
      @_hash['current_vault'] = 'current_vault'
      @_hash['vault_token'] = 'vault_token'
      @_hash['customer_vault_token'] = 'customer_vault_token'
      @_hash['customer_id'] = 'customer_id'
      @_hash['paypal_email'] = 'paypal_email'
      @_hash['payment_method_nonce'] = 'payment_method_nonce'
      @_hash['gateway_handle'] = 'gateway_handle'
      @_hash['cvv'] = 'cvv'
      @_hash['bank_name'] = 'bank_name'
      @_hash['bank_iban'] = 'bank_iban'
      @_hash['bank_routing_number'] = 'bank_routing_number'
      @_hash['bank_account_number'] = 'bank_account_number'
      @_hash['bank_branch_code'] = 'bank_branch_code'
      @_hash['bank_account_type'] = 'bank_account_type'
      @_hash['bank_account_holder_type'] = 'bank_account_holder_type'
      @_hash['last_four'] = 'last_four'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        chargify_token
        id
        payment_type
        first_name
        last_name
        masked_card_number
        full_number
        card_type
        expiration_month
        expiration_year
        billing_address
        billing_address_2
        billing_city
        billing_state
        billing_country
        billing_zip
        current_vault
        vault_token
        customer_vault_token
        customer_id
        paypal_email
        payment_method_nonce
        gateway_handle
        cvv
        bank_name
        bank_iban
        bank_routing_number
        bank_account_number
        bank_branch_code
        bank_account_type
        bank_account_holder_type
        last_four
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        billing_address_2
      ]
    end

    def initialize(chargify_token: SKIP, id: SKIP, payment_type: SKIP,
                   first_name: SKIP, last_name: SKIP, masked_card_number: SKIP,
                   full_number: SKIP, card_type: SKIP, expiration_month: SKIP,
                   expiration_year: SKIP, billing_address: SKIP,
                   billing_address_2: SKIP, billing_city: SKIP,
                   billing_state: SKIP, billing_country: SKIP,
                   billing_zip: SKIP, current_vault: SKIP, vault_token: SKIP,
                   customer_vault_token: SKIP, customer_id: SKIP,
                   paypal_email: SKIP, payment_method_nonce: SKIP,
                   gateway_handle: SKIP, cvv: SKIP, bank_name: SKIP,
                   bank_iban: SKIP, bank_routing_number: SKIP,
                   bank_account_number: SKIP, bank_branch_code: SKIP,
                   bank_account_type: SKIP, bank_account_holder_type: SKIP,
                   last_four: SKIP, additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @chargify_token = chargify_token unless chargify_token == SKIP
      @id = id unless id == SKIP
      @payment_type = payment_type unless payment_type == SKIP
      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @masked_card_number = masked_card_number unless masked_card_number == SKIP
      @full_number = full_number unless full_number == SKIP
      @card_type = card_type unless card_type == SKIP
      @expiration_month = expiration_month unless expiration_month == SKIP
      @expiration_year = expiration_year unless expiration_year == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @billing_address_2 = billing_address_2 unless billing_address_2 == SKIP
      @billing_city = billing_city unless billing_city == SKIP
      @billing_state = billing_state unless billing_state == SKIP
      @billing_country = billing_country unless billing_country == SKIP
      @billing_zip = billing_zip unless billing_zip == SKIP
      @current_vault = current_vault unless current_vault == SKIP
      @vault_token = vault_token unless vault_token == SKIP
      @customer_vault_token = customer_vault_token unless customer_vault_token == SKIP
      @customer_id = customer_id unless customer_id == SKIP
      @paypal_email = paypal_email unless paypal_email == SKIP
      @payment_method_nonce = payment_method_nonce unless payment_method_nonce == SKIP
      @gateway_handle = gateway_handle unless gateway_handle == SKIP
      @cvv = cvv unless cvv == SKIP
      @bank_name = bank_name unless bank_name == SKIP
      @bank_iban = bank_iban unless bank_iban == SKIP
      @bank_routing_number = bank_routing_number unless bank_routing_number == SKIP
      @bank_account_number = bank_account_number unless bank_account_number == SKIP
      @bank_branch_code = bank_branch_code unless bank_branch_code == SKIP
      @bank_account_type = bank_account_type unless bank_account_type == SKIP
      @bank_account_holder_type = bank_account_holder_type unless bank_account_holder_type == SKIP
      @last_four = last_four unless last_four == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      chargify_token =
        hash.key?('chargify_token') ? hash['chargify_token'] : SKIP
      id = hash.key?('id') ? hash['id'] : SKIP
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : SKIP
      first_name = hash.key?('first_name') ? hash['first_name'] : SKIP
      last_name = hash.key?('last_name') ? hash['last_name'] : SKIP
      masked_card_number =
        hash.key?('masked_card_number') ? hash['masked_card_number'] : SKIP
      full_number = hash.key?('full_number') ? hash['full_number'] : SKIP
      card_type = hash.key?('card_type') ? hash['card_type'] : SKIP
      expiration_month = hash.key?('expiration_month') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreatePaymentProfileExpirationMonth), hash['expiration_month']
      ) : SKIP
      expiration_year = hash.key?('expiration_year') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreatePaymentProfileExpirationYear), hash['expiration_year']
      ) : SKIP
      billing_address =
        hash.key?('billing_address') ? hash['billing_address'] : SKIP
      billing_address_2 =
        hash.key?('billing_address_2') ? hash['billing_address_2'] : SKIP
      billing_city = hash.key?('billing_city') ? hash['billing_city'] : SKIP
      billing_state = hash.key?('billing_state') ? hash['billing_state'] : SKIP
      billing_country =
        hash.key?('billing_country') ? hash['billing_country'] : SKIP
      billing_zip = hash.key?('billing_zip') ? hash['billing_zip'] : SKIP
      current_vault = hash.key?('current_vault') ? hash['current_vault'] : SKIP
      vault_token = hash.key?('vault_token') ? hash['vault_token'] : SKIP
      customer_vault_token =
        hash.key?('customer_vault_token') ? hash['customer_vault_token'] : SKIP
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : SKIP
      paypal_email = hash.key?('paypal_email') ? hash['paypal_email'] : SKIP
      payment_method_nonce =
        hash.key?('payment_method_nonce') ? hash['payment_method_nonce'] : SKIP
      gateway_handle =
        hash.key?('gateway_handle') ? hash['gateway_handle'] : SKIP
      cvv = hash.key?('cvv') ? hash['cvv'] : SKIP
      bank_name = hash.key?('bank_name') ? hash['bank_name'] : SKIP
      bank_iban = hash.key?('bank_iban') ? hash['bank_iban'] : SKIP
      bank_routing_number =
        hash.key?('bank_routing_number') ? hash['bank_routing_number'] : SKIP
      bank_account_number =
        hash.key?('bank_account_number') ? hash['bank_account_number'] : SKIP
      bank_branch_code =
        hash.key?('bank_branch_code') ? hash['bank_branch_code'] : SKIP
      bank_account_type =
        hash.key?('bank_account_type') ? hash['bank_account_type'] : SKIP
      bank_account_holder_type =
        hash.key?('bank_account_holder_type') ? hash['bank_account_holder_type'] : SKIP
      last_four = hash.key?('last_four') ? hash['last_four'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreatePaymentProfile.new(chargify_token: chargify_token,
                               id: id,
                               payment_type: payment_type,
                               first_name: first_name,
                               last_name: last_name,
                               masked_card_number: masked_card_number,
                               full_number: full_number,
                               card_type: card_type,
                               expiration_month: expiration_month,
                               expiration_year: expiration_year,
                               billing_address: billing_address,
                               billing_address_2: billing_address_2,
                               billing_city: billing_city,
                               billing_state: billing_state,
                               billing_country: billing_country,
                               billing_zip: billing_zip,
                               current_vault: current_vault,
                               vault_token: vault_token,
                               customer_vault_token: customer_vault_token,
                               customer_id: customer_id,
                               paypal_email: paypal_email,
                               payment_method_nonce: payment_method_nonce,
                               gateway_handle: gateway_handle,
                               cvv: cvv,
                               bank_name: bank_name,
                               bank_iban: bank_iban,
                               bank_routing_number: bank_routing_number,
                               bank_account_number: bank_account_number,
                               bank_branch_code: bank_branch_code,
                               bank_account_type: bank_account_type,
                               bank_account_holder_type: bank_account_holder_type,
                               last_four: last_four,
                               additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CreatePaymentProfile | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
