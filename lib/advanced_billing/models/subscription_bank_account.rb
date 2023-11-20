# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionBankAccount Model.
  class SubscriptionBankAccount < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Defaults to personal
    # @return [String]
    attr_accessor :bank_account_holder_type

    # Defaults to checking
    # @return [String]
    attr_accessor :bank_account_type

    # The bank where the account resides
    # @return [String]
    attr_accessor :bank_name

    # The current billing street address for the bank account
    # @return [String]
    attr_accessor :billing_address

    # The current billing street address, second line, for the bank account
    # @return [String]
    attr_accessor :billing_address_2

    # The current billing address city for the bank account
    # @return [String]
    attr_accessor :billing_city

    # The current billing address state for the bank account
    # @return [String]
    attr_accessor :billing_state

    # The current billing address zip code for the bank account
    # @return [String]
    attr_accessor :billing_zip

    # The current billing address country for the bank account
    # @return [String]
    attr_accessor :billing_country

    # The vault that stores the payment profile with the provided vault_token.
    # @return [BankAccountVault]
    attr_accessor :current_vault

    # The Chargify-assigned id for the customer record to which the bank account
    # belongs
    # @return [Integer]
    attr_accessor :customer_id

    # (only for Authorize.Net CIM storage): the customerProfileId for the owner
    # of the customerPaymentProfileId provided as the vault_token
    # @return [String]
    attr_accessor :customer_vault_token

    # The first name of the bank account holder
    # @return [String]
    attr_accessor :first_name

    # The last name of the bank account holder
    # @return [String]
    attr_accessor :last_name

    # The Chargify-assigned ID of the stored bank account. This value can be
    # used as an input to payment_profile_id when creating a subscription, in
    # order to re-use a stored payment profile for the same customer
    # @return [Integer]
    attr_accessor :id

    # A string representation of the stored bank account number with all but the
    # last 4 digits marked with X’s (i.e. ‘XXXXXXX1111’)
    # @return [String]
    attr_accessor :masked_bank_account_number

    # A string representation of the stored bank routing number with all but the
    # last 4 digits marked with X’s (i.e. ‘XXXXXXX1111’). payment_type will be
    # bank_account
    # @return [String]
    attr_accessor :masked_bank_routing_number

    # The “token” provided by your vault storage for an already stored payment
    # profile
    # @return [String]
    attr_accessor :vault_token

    # Token received after sending billing informations using chargify.js. This
    # token will only be received if passed as a sole attribute of
    # credit_card_attributes (i.e. tok_9g6hw85pnpt6knmskpwp4ttt)
    # @return [String]
    attr_accessor :chargify_token

    # Token received after sending billing informations using chargify.js. This
    # token will only be received if passed as a sole attribute of
    # credit_card_attributes (i.e. tok_9g6hw85pnpt6knmskpwp4ttt)
    # @return [Integer]
    attr_accessor :site_gateway_setting_id

    # Token received after sending billing informations using chargify.js. This
    # token will only be received if passed as a sole attribute of
    # credit_card_attributes (i.e. tok_9g6hw85pnpt6knmskpwp4ttt)
    # @return [String]
    attr_accessor :gateway_handle

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bank_account_holder_type'] = 'bank_account_holder_type'
      @_hash['bank_account_type'] = 'bank_account_type'
      @_hash['bank_name'] = 'bank_name'
      @_hash['billing_address'] = 'billing_address'
      @_hash['billing_address_2'] = 'billing_address_2'
      @_hash['billing_city'] = 'billing_city'
      @_hash['billing_state'] = 'billing_state'
      @_hash['billing_zip'] = 'billing_zip'
      @_hash['billing_country'] = 'billing_country'
      @_hash['current_vault'] = 'current_vault'
      @_hash['customer_id'] = 'customer_id'
      @_hash['customer_vault_token'] = 'customer_vault_token'
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['id'] = 'id'
      @_hash['masked_bank_account_number'] = 'masked_bank_account_number'
      @_hash['masked_bank_routing_number'] = 'masked_bank_routing_number'
      @_hash['vault_token'] = 'vault_token'
      @_hash['chargify_token'] = 'chargify_token'
      @_hash['site_gateway_setting_id'] = 'site_gateway_setting_id'
      @_hash['gateway_handle'] = 'gateway_handle'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        bank_account_holder_type
        bank_account_type
        bank_name
        billing_address
        billing_address_2
        billing_city
        billing_state
        billing_zip
        billing_country
        current_vault
        customer_id
        customer_vault_token
        first_name
        last_name
        id
        masked_bank_account_number
        masked_bank_routing_number
        vault_token
        chargify_token
        site_gateway_setting_id
        gateway_handle
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(bank_account_holder_type = SKIP,
                   bank_account_type = SKIP,
                   bank_name = SKIP,
                   billing_address = SKIP,
                   billing_address_2 = SKIP,
                   billing_city = SKIP,
                   billing_state = SKIP,
                   billing_zip = SKIP,
                   billing_country = SKIP,
                   current_vault = SKIP,
                   customer_id = SKIP,
                   customer_vault_token = SKIP,
                   first_name = SKIP,
                   last_name = SKIP,
                   id = SKIP,
                   masked_bank_account_number = SKIP,
                   masked_bank_routing_number = SKIP,
                   vault_token = SKIP,
                   chargify_token = SKIP,
                   site_gateway_setting_id = SKIP,
                   gateway_handle = SKIP)
      @bank_account_holder_type = bank_account_holder_type unless bank_account_holder_type == SKIP
      @bank_account_type = bank_account_type unless bank_account_type == SKIP
      @bank_name = bank_name unless bank_name == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @billing_address_2 = billing_address_2 unless billing_address_2 == SKIP
      @billing_city = billing_city unless billing_city == SKIP
      @billing_state = billing_state unless billing_state == SKIP
      @billing_zip = billing_zip unless billing_zip == SKIP
      @billing_country = billing_country unless billing_country == SKIP
      @current_vault = current_vault unless current_vault == SKIP
      @customer_id = customer_id unless customer_id == SKIP
      @customer_vault_token = customer_vault_token unless customer_vault_token == SKIP
      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @id = id unless id == SKIP
      unless masked_bank_account_number == SKIP
        @masked_bank_account_number =
          masked_bank_account_number
      end
      unless masked_bank_routing_number == SKIP
        @masked_bank_routing_number =
          masked_bank_routing_number
      end
      @vault_token = vault_token unless vault_token == SKIP
      @chargify_token = chargify_token unless chargify_token == SKIP
      @site_gateway_setting_id = site_gateway_setting_id unless site_gateway_setting_id == SKIP
      @gateway_handle = gateway_handle unless gateway_handle == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      bank_account_holder_type =
        hash.key?('bank_account_holder_type') ? hash['bank_account_holder_type'] : SKIP
      bank_account_type =
        hash.key?('bank_account_type') ? hash['bank_account_type'] : SKIP
      bank_name = hash.key?('bank_name') ? hash['bank_name'] : SKIP
      billing_address =
        hash.key?('billing_address') ? hash['billing_address'] : SKIP
      billing_address_2 =
        hash.key?('billing_address_2') ? hash['billing_address_2'] : SKIP
      billing_city = hash.key?('billing_city') ? hash['billing_city'] : SKIP
      billing_state = hash.key?('billing_state') ? hash['billing_state'] : SKIP
      billing_zip = hash.key?('billing_zip') ? hash['billing_zip'] : SKIP
      billing_country =
        hash.key?('billing_country') ? hash['billing_country'] : SKIP
      current_vault = hash.key?('current_vault') ? hash['current_vault'] : SKIP
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : SKIP
      customer_vault_token =
        hash.key?('customer_vault_token') ? hash['customer_vault_token'] : SKIP
      first_name = hash.key?('first_name') ? hash['first_name'] : SKIP
      last_name = hash.key?('last_name') ? hash['last_name'] : SKIP
      id = hash.key?('id') ? hash['id'] : SKIP
      masked_bank_account_number =
        hash.key?('masked_bank_account_number') ? hash['masked_bank_account_number'] : SKIP
      masked_bank_routing_number =
        hash.key?('masked_bank_routing_number') ? hash['masked_bank_routing_number'] : SKIP
      vault_token = hash.key?('vault_token') ? hash['vault_token'] : SKIP
      chargify_token =
        hash.key?('chargify_token') ? hash['chargify_token'] : SKIP
      site_gateway_setting_id =
        hash.key?('site_gateway_setting_id') ? hash['site_gateway_setting_id'] : SKIP
      gateway_handle =
        hash.key?('gateway_handle') ? hash['gateway_handle'] : SKIP

      # Create object from extracted values.
      SubscriptionBankAccount.new(bank_account_holder_type,
                                  bank_account_type,
                                  bank_name,
                                  billing_address,
                                  billing_address_2,
                                  billing_city,
                                  billing_state,
                                  billing_zip,
                                  billing_country,
                                  current_vault,
                                  customer_id,
                                  customer_vault_token,
                                  first_name,
                                  last_name,
                                  id,
                                  masked_bank_account_number,
                                  masked_bank_routing_number,
                                  vault_token,
                                  chargify_token,
                                  site_gateway_setting_id,
                                  gateway_handle)
    end
  end
end
