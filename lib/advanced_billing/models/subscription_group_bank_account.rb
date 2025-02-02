# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionGroupBankAccount Model.
  class SubscriptionGroupBankAccount < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # (Required when creating a subscription with ACH or GoCardless) The name of
    # the bank where the customer’s account resides
    # @return [String]
    attr_accessor :bank_name

    # (Required when creating a subscription with ACH. Required when creating a
    # subscription with GoCardless and bank_iban is blank) The customerʼs bank
    # account number
    # @return [String]
    attr_accessor :bank_account_number

    # (Required when creating a subscription with ACH. Optional when creating a
    # subscription with GoCardless). The routing number of the bank. It becomes
    # bank_code while passing via GoCardless API
    # @return [String]
    attr_accessor :bank_routing_number

    # (Optional when creating a subscription with GoCardless). International
    # Bank Account Number. Alternatively, local bank details can be provided
    # @return [String]
    attr_accessor :bank_iban

    # (Optional when creating a subscription with GoCardless) Branch code.
    # Alternatively, an IBAN can be provided
    # @return [String]
    attr_accessor :bank_branch_code

    # Defaults to checking
    # @return [BankAccountType]
    attr_accessor :bank_account_type

    # Defaults to personal
    # @return [BankAccountHolderType]
    attr_accessor :bank_account_holder_type

    # Defaults to personal
    # @return [PaymentType]
    attr_accessor :payment_type

    # Defaults to personal
    # @return [String]
    attr_accessor :billing_address

    # Defaults to personal
    # @return [String]
    attr_accessor :billing_city

    # Defaults to personal
    # @return [String]
    attr_accessor :billing_state

    # Defaults to personal
    # @return [String]
    attr_accessor :billing_zip

    # Defaults to personal
    # @return [String]
    attr_accessor :billing_country

    # Defaults to personal
    # @return [String]
    attr_accessor :chargify_token

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [BankAccountVault]
    attr_accessor :current_vault

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :gateway_handle

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bank_name'] = 'bank_name'
      @_hash['bank_account_number'] = 'bank_account_number'
      @_hash['bank_routing_number'] = 'bank_routing_number'
      @_hash['bank_iban'] = 'bank_iban'
      @_hash['bank_branch_code'] = 'bank_branch_code'
      @_hash['bank_account_type'] = 'bank_account_type'
      @_hash['bank_account_holder_type'] = 'bank_account_holder_type'
      @_hash['payment_type'] = 'payment_type'
      @_hash['billing_address'] = 'billing_address'
      @_hash['billing_city'] = 'billing_city'
      @_hash['billing_state'] = 'billing_state'
      @_hash['billing_zip'] = 'billing_zip'
      @_hash['billing_country'] = 'billing_country'
      @_hash['chargify_token'] = 'chargify_token'
      @_hash['current_vault'] = 'current_vault'
      @_hash['gateway_handle'] = 'gateway_handle'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        bank_name
        bank_account_number
        bank_routing_number
        bank_iban
        bank_branch_code
        bank_account_type
        bank_account_holder_type
        payment_type
        billing_address
        billing_city
        billing_state
        billing_zip
        billing_country
        chargify_token
        current_vault
        gateway_handle
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(bank_name: SKIP, bank_account_number: SKIP,
                   bank_routing_number: SKIP, bank_iban: SKIP,
                   bank_branch_code: SKIP, bank_account_type: SKIP,
                   bank_account_holder_type: SKIP, payment_type: SKIP,
                   billing_address: SKIP, billing_city: SKIP,
                   billing_state: SKIP, billing_zip: SKIP,
                   billing_country: SKIP, chargify_token: SKIP,
                   current_vault: SKIP, gateway_handle: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @bank_name = bank_name unless bank_name == SKIP
      @bank_account_number = bank_account_number unless bank_account_number == SKIP
      @bank_routing_number = bank_routing_number unless bank_routing_number == SKIP
      @bank_iban = bank_iban unless bank_iban == SKIP
      @bank_branch_code = bank_branch_code unless bank_branch_code == SKIP
      @bank_account_type = bank_account_type unless bank_account_type == SKIP
      @bank_account_holder_type = bank_account_holder_type unless bank_account_holder_type == SKIP
      @payment_type = payment_type unless payment_type == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @billing_city = billing_city unless billing_city == SKIP
      @billing_state = billing_state unless billing_state == SKIP
      @billing_zip = billing_zip unless billing_zip == SKIP
      @billing_country = billing_country unless billing_country == SKIP
      @chargify_token = chargify_token unless chargify_token == SKIP
      @current_vault = current_vault unless current_vault == SKIP
      @gateway_handle = gateway_handle unless gateway_handle == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      bank_name = hash.key?('bank_name') ? hash['bank_name'] : SKIP
      bank_account_number =
        hash.key?('bank_account_number') ? hash['bank_account_number'] : SKIP
      bank_routing_number =
        hash.key?('bank_routing_number') ? hash['bank_routing_number'] : SKIP
      bank_iban = hash.key?('bank_iban') ? hash['bank_iban'] : SKIP
      bank_branch_code =
        hash.key?('bank_branch_code') ? hash['bank_branch_code'] : SKIP
      bank_account_type =
        hash.key?('bank_account_type') ? hash['bank_account_type'] : SKIP
      bank_account_holder_type =
        hash.key?('bank_account_holder_type') ? hash['bank_account_holder_type'] : SKIP
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : SKIP
      billing_address =
        hash.key?('billing_address') ? hash['billing_address'] : SKIP
      billing_city = hash.key?('billing_city') ? hash['billing_city'] : SKIP
      billing_state = hash.key?('billing_state') ? hash['billing_state'] : SKIP
      billing_zip = hash.key?('billing_zip') ? hash['billing_zip'] : SKIP
      billing_country =
        hash.key?('billing_country') ? hash['billing_country'] : SKIP
      chargify_token =
        hash.key?('chargify_token') ? hash['chargify_token'] : SKIP
      current_vault = hash.key?('current_vault') ? hash['current_vault'] : SKIP
      gateway_handle =
        hash.key?('gateway_handle') ? hash['gateway_handle'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionGroupBankAccount.new(bank_name: bank_name,
                                       bank_account_number: bank_account_number,
                                       bank_routing_number: bank_routing_number,
                                       bank_iban: bank_iban,
                                       bank_branch_code: bank_branch_code,
                                       bank_account_type: bank_account_type,
                                       bank_account_holder_type: bank_account_holder_type,
                                       payment_type: payment_type,
                                       billing_address: billing_address,
                                       billing_city: billing_city,
                                       billing_state: billing_state,
                                       billing_zip: billing_zip,
                                       billing_country: billing_country,
                                       chargify_token: chargify_token,
                                       current_vault: current_vault,
                                       gateway_handle: gateway_handle,
                                       additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [SubscriptionGroupBankAccount | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} bank_name: #{@bank_name}, bank_account_number: #{@bank_account_number},"\
      " bank_routing_number: #{@bank_routing_number}, bank_iban: #{@bank_iban}, bank_branch_code:"\
      " #{@bank_branch_code}, bank_account_type: #{@bank_account_type}, bank_account_holder_type:"\
      " #{@bank_account_holder_type}, payment_type: #{@payment_type}, billing_address:"\
      " #{@billing_address}, billing_city: #{@billing_city}, billing_state: #{@billing_state},"\
      " billing_zip: #{@billing_zip}, billing_country: #{@billing_country}, chargify_token:"\
      " #{@chargify_token}, current_vault: #{@current_vault}, gateway_handle: #{@gateway_handle},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} bank_name: #{@bank_name.inspect}, bank_account_number:"\
      " #{@bank_account_number.inspect}, bank_routing_number: #{@bank_routing_number.inspect},"\
      " bank_iban: #{@bank_iban.inspect}, bank_branch_code: #{@bank_branch_code.inspect},"\
      " bank_account_type: #{@bank_account_type.inspect}, bank_account_holder_type:"\
      " #{@bank_account_holder_type.inspect}, payment_type: #{@payment_type.inspect},"\
      " billing_address: #{@billing_address.inspect}, billing_city: #{@billing_city.inspect},"\
      " billing_state: #{@billing_state.inspect}, billing_zip: #{@billing_zip.inspect},"\
      " billing_country: #{@billing_country.inspect}, chargify_token: #{@chargify_token.inspect},"\
      " current_vault: #{@current_vault.inspect}, gateway_handle: #{@gateway_handle.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
