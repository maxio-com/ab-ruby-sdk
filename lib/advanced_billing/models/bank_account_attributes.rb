# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # BankAccountAttributes Model.
  class BankAccountAttributes < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :chargify_token

    # (Required when creating a subscription with ACH or GoCardless) The name of
    # the bank where the customer’s account resides
    # @return [String]
    attr_accessor :bank_name

    # (Required when creating a subscription with ACH. Optional when creating a
    # subscription with GoCardless). The routing number of the bank. It becomes
    # bank_code while passing via GoCardless API
    # @return [String]
    attr_accessor :bank_routing_number

    # (Required when creating a subscription with ACH. Required when creating a
    # subscription with GoCardless and bank_iban is blank) The customerʼs bank
    # account number
    # @return [String]
    attr_accessor :bank_account_number

    # Defaults to checking
    # @return [BankAccountType]
    attr_accessor :bank_account_type

    # (Optional when creating a subscription with GoCardless) Branch code.
    # Alternatively, an IBAN can be provided
    # @return [String]
    attr_accessor :bank_branch_code

    # (Optional when creating a subscription with GoCardless). International
    # Bank Account Number. Alternatively, local bank details can be provided
    # @return [String]
    attr_accessor :bank_iban

    # Defaults to personal
    # @return [BankAccountHolderType]
    attr_accessor :bank_account_holder_type

    # Defaults to personal
    # @return [PaymentType]
    attr_accessor :payment_type

    # The vault that stores the payment profile with the provided vault_token.
    # @return [BankAccountVault]
    attr_accessor :current_vault

    # The vault that stores the payment profile with the provided vault_token.
    # @return [String]
    attr_accessor :vault_token

    # (only for Authorize.Net CIM storage or Square) The customerProfileId for
    # the owner of the customerPaymentProfileId provided as the vault_token
    # @return [String]
    attr_accessor :customer_vault_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['chargify_token'] = 'chargify_token'
      @_hash['bank_name'] = 'bank_name'
      @_hash['bank_routing_number'] = 'bank_routing_number'
      @_hash['bank_account_number'] = 'bank_account_number'
      @_hash['bank_account_type'] = 'bank_account_type'
      @_hash['bank_branch_code'] = 'bank_branch_code'
      @_hash['bank_iban'] = 'bank_iban'
      @_hash['bank_account_holder_type'] = 'bank_account_holder_type'
      @_hash['payment_type'] = 'payment_type'
      @_hash['current_vault'] = 'current_vault'
      @_hash['vault_token'] = 'vault_token'
      @_hash['customer_vault_token'] = 'customer_vault_token'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        chargify_token
        bank_name
        bank_routing_number
        bank_account_number
        bank_account_type
        bank_branch_code
        bank_iban
        bank_account_holder_type
        payment_type
        current_vault
        vault_token
        customer_vault_token
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(chargify_token = SKIP,
                   bank_name = SKIP,
                   bank_routing_number = SKIP,
                   bank_account_number = SKIP,
                   bank_account_type = SKIP,
                   bank_branch_code = SKIP,
                   bank_iban = SKIP,
                   bank_account_holder_type = SKIP,
                   payment_type = SKIP,
                   current_vault = SKIP,
                   vault_token = SKIP,
                   customer_vault_token = SKIP,
                   additional_properties = {})
      @chargify_token = chargify_token unless chargify_token == SKIP
      @bank_name = bank_name unless bank_name == SKIP
      @bank_routing_number = bank_routing_number unless bank_routing_number == SKIP
      @bank_account_number = bank_account_number unless bank_account_number == SKIP
      @bank_account_type = bank_account_type unless bank_account_type == SKIP
      @bank_branch_code = bank_branch_code unless bank_branch_code == SKIP
      @bank_iban = bank_iban unless bank_iban == SKIP
      @bank_account_holder_type = bank_account_holder_type unless bank_account_holder_type == SKIP
      @payment_type = payment_type unless payment_type == SKIP
      @current_vault = current_vault unless current_vault == SKIP
      @vault_token = vault_token unless vault_token == SKIP
      @customer_vault_token = customer_vault_token unless customer_vault_token == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      chargify_token =
        hash.key?('chargify_token') ? hash['chargify_token'] : SKIP
      bank_name = hash.key?('bank_name') ? hash['bank_name'] : SKIP
      bank_routing_number =
        hash.key?('bank_routing_number') ? hash['bank_routing_number'] : SKIP
      bank_account_number =
        hash.key?('bank_account_number') ? hash['bank_account_number'] : SKIP
      bank_account_type =
        hash.key?('bank_account_type') ? hash['bank_account_type'] : SKIP
      bank_branch_code =
        hash.key?('bank_branch_code') ? hash['bank_branch_code'] : SKIP
      bank_iban = hash.key?('bank_iban') ? hash['bank_iban'] : SKIP
      bank_account_holder_type =
        hash.key?('bank_account_holder_type') ? hash['bank_account_holder_type'] : SKIP
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : SKIP
      current_vault = hash.key?('current_vault') ? hash['current_vault'] : SKIP
      vault_token = hash.key?('vault_token') ? hash['vault_token'] : SKIP
      customer_vault_token =
        hash.key?('customer_vault_token') ? hash['customer_vault_token'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      BankAccountAttributes.new(chargify_token,
                                bank_name,
                                bank_routing_number,
                                bank_account_number,
                                bank_account_type,
                                bank_branch_code,
                                bank_iban,
                                bank_account_holder_type,
                                payment_type,
                                current_vault,
                                vault_token,
                                customer_vault_token,
                                hash)
    end
  end
end
