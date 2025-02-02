# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # alias to credit_card_attributes
  class PaymentProfileAttributes < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # (Optional) Token received after sending billing information using
    # chargify.js. This token must be passed as a sole attribute of
    # `payment_profile_attributes` (i.e. tok_9g6hw85pnpt6knmskpwp4ttt)
    # @return [String]
    attr_accessor :chargify_token

    # (Optional) Token received after sending billing information using
    # chargify.js. This token must be passed as a sole attribute of
    # `payment_profile_attributes` (i.e. tok_9g6hw85pnpt6knmskpwp4ttt)
    # @return [Integer]
    attr_accessor :id

    # (Optional) Token received after sending billing information using
    # chargify.js. This token must be passed as a sole attribute of
    # `payment_profile_attributes` (i.e. tok_9g6hw85pnpt6knmskpwp4ttt)
    # @return [PaymentType]
    attr_accessor :payment_type

    # (Optional) First name on card or bank account. If omitted, the first_name
    # from customer attributes will be used.
    # @return [String]
    attr_accessor :first_name

    # (Optional) Last name on card or bank account. If omitted, the last_name
    # from customer attributes will be used.
    # @return [String]
    attr_accessor :last_name

    # (Optional) Last name on card or bank account. If omitted, the last_name
    # from customer attributes will be used.
    # @return [String]
    attr_accessor :masked_card_number

    # The full credit card number (string representation, i.e. 5424000000000015)
    # @return [String]
    attr_accessor :full_number

    # (Optional, used only for Subscription Import) If you know the card type
    # (i.e. Visa, MC, etc) you may supply it here so that we may display the
    # card type in the UI.
    # @return [CardType]
    attr_accessor :card_type

    # (Optional when performing a Subscription Import via vault_token, required
    # otherwise) The 1- or 2-digit credit card expiration month, as an integer
    # or string, i.e. 5
    # @return [Object]
    attr_accessor :expiration_month

    # (Optional when performing a Subscription Import via vault_token, required
    # otherwise) The 4-digit credit card expiration year, as an integer or
    # string, i.e. 2012
    # @return [Object]
    attr_accessor :expiration_year

    # (Optional, may be required by your product configuration or gateway
    # settings) The credit card or bank account billing street address (i.e. 123
    # Main St.). This value is merely passed through to the payment gateway.
    # @return [String]
    attr_accessor :billing_address

    # (Optional) Second line of the customer’s billing address i.e. Apt. 100
    # @return [String]
    attr_accessor :billing_address_2

    # (Optional, may be required by your product configuration or gateway
    # settings) The credit card or bank account billing address city (i.e.
    # “Boston”). This value is merely passed through to the payment gateway.
    # @return [String]
    attr_accessor :billing_city

    # (Optional, may be required by your product configuration or gateway
    # settings) The credit card or bank account billing address state (i.e. MA).
    # This value is merely passed through to the payment gateway. This must
    # conform to the
    # [ISO_3166-1](https://en.wikipedia.org/wiki/ISO_3166-1#Current_codes) in
    # order to be valid for tax locale purposes.
    # @return [String]
    attr_accessor :billing_state

    # (Optional, may be required by your product configuration or gateway
    # settings) The credit card or bank account billing address country,
    # required in [ISO_3166-1
    # alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) format (i.e.
    # “US”). This value is merely passed through to the payment gateway. Some
    # gateways require country codes in a specific format. Please check your
    # gateway’s documentation. If creating an ACH subscription, only US is
    # supported at this time.
    # @return [String]
    attr_accessor :billing_country

    # (Optional, may be required by your product configuration or gateway
    # settings) The credit card or bank account billing address zip code (i.e.
    # 12345). This value is merely passed through to the payment gateway.
    # @return [String]
    attr_accessor :billing_zip

    # (Optional, used only for Subscription Import) The vault that stores the
    # payment profile with the provided vault_token.
    # @return [AllVaults]
    attr_accessor :current_vault

    # (Optional, used only for Subscription Import) The “token” provided by your
    # vault storage for an already stored payment profile
    # @return [String]
    attr_accessor :vault_token

    # (Optional, used only for Subscription Import) (only for Authorize.Net CIM
    # storage or Square) The customerProfileId for the owner of the
    # customerPaymentProfileId provided as the vault_token
    # @return [String]
    attr_accessor :customer_vault_token

    # (Optional, used only for Subscription Import) (only for Authorize.Net CIM
    # storage or Square) The customerProfileId for the owner of the
    # customerPaymentProfileId provided as the vault_token
    # @return [Integer]
    attr_accessor :customer_id

    # (Optional, used only for Subscription Import) (only for Authorize.Net CIM
    # storage or Square) The customerProfileId for the owner of the
    # customerPaymentProfileId provided as the vault_token
    # @return [String]
    attr_accessor :paypal_email

    # (Required for Square unless importing with vault_token and
    # customer_vault_token) The nonce generated by the Square Javascript library
    # (SqPaymentForm)
    # @return [String]
    attr_accessor :payment_method_nonce

    # (Optional) This attribute is only available if MultiGateway feature is
    # enabled for your Site. This feature is in the Private Beta currently.
    # gateway_handle is used to directly select a gateway where a payment
    # profile will be stored in. Every connected gateway must have a unique
    # gateway handle specified. Read [Multigateway
    # description](https://chargify.zendesk.com/hc/en-us/articles/4407761759643#
    # connecting-with-multiple-gateways) to learn more about new concepts that
    # MultiGateway introduces and the default behavior when this attribute is
    # not passed.
    # @return [String]
    attr_accessor :gateway_handle

    # (Optional, may be required by your gateway settings) The 3- or 4-digit
    # Card Verification Value. This value is merely passed through to the
    # payment gateway.
    # @return [String]
    attr_accessor :cvv

    # (Optional, used only for Subscription Import) If you have the last 4
    # digits of the credit card number, you may supply them here so that we may
    # create a masked card number (i.e. XXXX-XXXX-XXXX-1234) for display in the
    # UI. Last 4 digits are required for refunds in Auth.Net.
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
                   gateway_handle: SKIP, cvv: SKIP, last_four: SKIP,
                   additional_properties: {})
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
        UnionTypeLookUp.get(:PaymentProfileAttributesExpirationMonth), hash['expiration_month']
      ) : SKIP
      expiration_year = hash.key?('expiration_year') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:PaymentProfileAttributesExpirationYear), hash['expiration_year']
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
      last_four = hash.key?('last_four') ? hash['last_four'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PaymentProfileAttributes.new(chargify_token: chargify_token,
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
                                   last_four: last_four,
                                   additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [PaymentProfileAttributes | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} chargify_token: #{@chargify_token}, id: #{@id}, payment_type:"\
      " #{@payment_type}, first_name: #{@first_name}, last_name: #{@last_name},"\
      " masked_card_number: #{@masked_card_number}, full_number: #{@full_number}, card_type:"\
      " #{@card_type}, expiration_month: #{@expiration_month}, expiration_year:"\
      " #{@expiration_year}, billing_address: #{@billing_address}, billing_address_2:"\
      " #{@billing_address_2}, billing_city: #{@billing_city}, billing_state: #{@billing_state},"\
      " billing_country: #{@billing_country}, billing_zip: #{@billing_zip}, current_vault:"\
      " #{@current_vault}, vault_token: #{@vault_token}, customer_vault_token:"\
      " #{@customer_vault_token}, customer_id: #{@customer_id}, paypal_email: #{@paypal_email},"\
      " payment_method_nonce: #{@payment_method_nonce}, gateway_handle: #{@gateway_handle}, cvv:"\
      " #{@cvv}, last_four: #{@last_four}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} chargify_token: #{@chargify_token.inspect}, id: #{@id.inspect},"\
      " payment_type: #{@payment_type.inspect}, first_name: #{@first_name.inspect}, last_name:"\
      " #{@last_name.inspect}, masked_card_number: #{@masked_card_number.inspect}, full_number:"\
      " #{@full_number.inspect}, card_type: #{@card_type.inspect}, expiration_month:"\
      " #{@expiration_month.inspect}, expiration_year: #{@expiration_year.inspect},"\
      " billing_address: #{@billing_address.inspect}, billing_address_2:"\
      " #{@billing_address_2.inspect}, billing_city: #{@billing_city.inspect}, billing_state:"\
      " #{@billing_state.inspect}, billing_country: #{@billing_country.inspect}, billing_zip:"\
      " #{@billing_zip.inspect}, current_vault: #{@current_vault.inspect}, vault_token:"\
      " #{@vault_token.inspect}, customer_vault_token: #{@customer_vault_token.inspect},"\
      " customer_id: #{@customer_id.inspect}, paypal_email: #{@paypal_email.inspect},"\
      " payment_method_nonce: #{@payment_method_nonce.inspect}, gateway_handle:"\
      " #{@gateway_handle.inspect}, cvv: #{@cvv.inspect}, last_four: #{@last_four.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
