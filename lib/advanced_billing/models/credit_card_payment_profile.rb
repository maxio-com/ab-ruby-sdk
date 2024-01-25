# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreditCardPaymentProfile Model.
  class CreditCardPaymentProfile < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Chargify-assigned ID of the stored card. This value can be used as an
    # input to payment_profile_id when creating a subscription, in order to
    # re-use a stored payment profile for the same customer.
    # @return [Integer]
    attr_accessor :id

    # The first name of the card holder.
    # @return [String]
    attr_accessor :first_name

    # The last name of the card holder.
    # @return [String]
    attr_accessor :last_name

    # A string representation of the credit card number with all but the last 4
    # digits masked with X’s (i.e. ‘XXXX-XXXX-XXXX-1234’).
    # @return [String]
    attr_accessor :masked_card_number

    # The type of card used.
    # @return [CardType]
    attr_accessor :card_type

    # An integer representing the expiration month of the card(1 – 12).
    # @return [Integer]
    attr_accessor :expiration_month

    # An integer representing the 4-digit expiration year of the card(i.e.
    # ‘2012’).
    # @return [Integer]
    attr_accessor :expiration_year

    # The Chargify-assigned id for the customer record to which the card
    # belongs.
    # @return [Integer]
    attr_accessor :customer_id

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [CurrentVault]
    attr_accessor :current_vault

    # The “token” provided by your vault storage for an already stored payment
    # profile.
    # @return [String]
    attr_accessor :vault_token

    # The current billing street address for the card.
    # @return [String]
    attr_accessor :billing_address

    # The current billing address city for the card.
    # @return [String]
    attr_accessor :billing_city

    # The current billing address state for the card.
    # @return [String]
    attr_accessor :billing_state

    # The current billing address zip code for the card.
    # @return [String]
    attr_accessor :billing_zip

    # The current billing address country for the card.
    # @return [String]
    attr_accessor :billing_country

    # (only for Authorize.Net CIM storage): the customerProfileId for the owner
    # of the customerPaymentProfileId provided as the vault_token.
    # @return [String]
    attr_accessor :customer_vault_token

    # The current billing street address, second line, for the card.
    # @return [String]
    attr_accessor :billing_address_2

    # The current billing street address, second line, for the card.
    # @return [PaymentType]
    attr_accessor :payment_type

    # The current billing street address, second line, for the card.
    # @return [TrueClass | FalseClass]
    attr_accessor :disabled

    # Token received after sending billing information using chargify.js. This
    # token will only be received if passed as a sole attribute of
    # credit_card_attributes (i.e. tok_9g6hw85pnpt6knmskpwp4ttt)
    # @return [String]
    attr_accessor :chargify_token

    # Token received after sending billing information using chargify.js. This
    # token will only be received if passed as a sole attribute of
    # credit_card_attributes (i.e. tok_9g6hw85pnpt6knmskpwp4ttt)
    # @return [Integer]
    attr_accessor :site_gateway_setting_id

    # An identifier of connected gateway.
    # @return [String]
    attr_accessor :gateway_handle

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['masked_card_number'] = 'masked_card_number'
      @_hash['card_type'] = 'card_type'
      @_hash['expiration_month'] = 'expiration_month'
      @_hash['expiration_year'] = 'expiration_year'
      @_hash['customer_id'] = 'customer_id'
      @_hash['current_vault'] = 'current_vault'
      @_hash['vault_token'] = 'vault_token'
      @_hash['billing_address'] = 'billing_address'
      @_hash['billing_city'] = 'billing_city'
      @_hash['billing_state'] = 'billing_state'
      @_hash['billing_zip'] = 'billing_zip'
      @_hash['billing_country'] = 'billing_country'
      @_hash['customer_vault_token'] = 'customer_vault_token'
      @_hash['billing_address_2'] = 'billing_address_2'
      @_hash['payment_type'] = 'payment_type'
      @_hash['disabled'] = 'disabled'
      @_hash['chargify_token'] = 'chargify_token'
      @_hash['site_gateway_setting_id'] = 'site_gateway_setting_id'
      @_hash['gateway_handle'] = 'gateway_handle'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        first_name
        last_name
        card_type
        expiration_month
        expiration_year
        customer_id
        current_vault
        vault_token
        billing_address
        billing_city
        billing_state
        billing_zip
        billing_country
        customer_vault_token
        billing_address_2
        payment_type
        disabled
        chargify_token
        site_gateway_setting_id
        gateway_handle
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        vault_token
        billing_address
        billing_city
        billing_state
        billing_zip
        billing_country
        customer_vault_token
        billing_address_2
        site_gateway_setting_id
        gateway_handle
      ]
    end

    def initialize(masked_card_number = nil,
                   id = SKIP,
                   first_name = SKIP,
                   last_name = SKIP,
                   card_type = SKIP,
                   expiration_month = SKIP,
                   expiration_year = SKIP,
                   customer_id = SKIP,
                   current_vault = SKIP,
                   vault_token = SKIP,
                   billing_address = SKIP,
                   billing_city = SKIP,
                   billing_state = SKIP,
                   billing_zip = SKIP,
                   billing_country = SKIP,
                   customer_vault_token = SKIP,
                   billing_address_2 = SKIP,
                   payment_type = PaymentType::CREDIT_CARD,
                   disabled = SKIP,
                   chargify_token = SKIP,
                   site_gateway_setting_id = SKIP,
                   gateway_handle = SKIP)
      @id = id unless id == SKIP
      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @masked_card_number = masked_card_number
      @card_type = card_type unless card_type == SKIP
      @expiration_month = expiration_month unless expiration_month == SKIP
      @expiration_year = expiration_year unless expiration_year == SKIP
      @customer_id = customer_id unless customer_id == SKIP
      @current_vault = current_vault unless current_vault == SKIP
      @vault_token = vault_token unless vault_token == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @billing_city = billing_city unless billing_city == SKIP
      @billing_state = billing_state unless billing_state == SKIP
      @billing_zip = billing_zip unless billing_zip == SKIP
      @billing_country = billing_country unless billing_country == SKIP
      @customer_vault_token = customer_vault_token unless customer_vault_token == SKIP
      @billing_address_2 = billing_address_2 unless billing_address_2 == SKIP
      @payment_type = payment_type unless payment_type == SKIP
      @disabled = disabled unless disabled == SKIP
      @chargify_token = chargify_token unless chargify_token == SKIP
      @site_gateway_setting_id = site_gateway_setting_id unless site_gateway_setting_id == SKIP
      @gateway_handle = gateway_handle unless gateway_handle == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      masked_card_number =
        hash.key?('masked_card_number') ? hash['masked_card_number'] : nil
      id = hash.key?('id') ? hash['id'] : SKIP
      first_name = hash.key?('first_name') ? hash['first_name'] : SKIP
      last_name = hash.key?('last_name') ? hash['last_name'] : SKIP
      card_type = hash.key?('card_type') ? hash['card_type'] : SKIP
      expiration_month =
        hash.key?('expiration_month') ? hash['expiration_month'] : SKIP
      expiration_year =
        hash.key?('expiration_year') ? hash['expiration_year'] : SKIP
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : SKIP
      current_vault = hash.key?('current_vault') ? hash['current_vault'] : SKIP
      vault_token = hash.key?('vault_token') ? hash['vault_token'] : SKIP
      billing_address =
        hash.key?('billing_address') ? hash['billing_address'] : SKIP
      billing_city = hash.key?('billing_city') ? hash['billing_city'] : SKIP
      billing_state = hash.key?('billing_state') ? hash['billing_state'] : SKIP
      billing_zip = hash.key?('billing_zip') ? hash['billing_zip'] : SKIP
      billing_country =
        hash.key?('billing_country') ? hash['billing_country'] : SKIP
      customer_vault_token =
        hash.key?('customer_vault_token') ? hash['customer_vault_token'] : SKIP
      billing_address_2 =
        hash.key?('billing_address_2') ? hash['billing_address_2'] : SKIP
      payment_type = hash['payment_type'] ||= PaymentType::CREDIT_CARD
      disabled = hash.key?('disabled') ? hash['disabled'] : SKIP
      chargify_token =
        hash.key?('chargify_token') ? hash['chargify_token'] : SKIP
      site_gateway_setting_id =
        hash.key?('site_gateway_setting_id') ? hash['site_gateway_setting_id'] : SKIP
      gateway_handle =
        hash.key?('gateway_handle') ? hash['gateway_handle'] : SKIP

      # Create object from extracted values.
      CreditCardPaymentProfile.new(masked_card_number,
                                   id,
                                   first_name,
                                   last_name,
                                   card_type,
                                   expiration_month,
                                   expiration_year,
                                   customer_id,
                                   current_vault,
                                   vault_token,
                                   billing_address,
                                   billing_city,
                                   billing_state,
                                   billing_zip,
                                   billing_country,
                                   customer_vault_token,
                                   billing_address_2,
                                   payment_type,
                                   disabled,
                                   chargify_token,
                                   site_gateway_setting_id,
                                   gateway_handle)
    end

    # Validates an instance of the object from a given value.
    # @param [CreditCardPaymentProfile | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.masked_card_number,
                                     ->(val) { val.instance_of? String })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['masked_card_number'],
                            ->(val) { val.instance_of? String })
    end
  end
end
