# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # GetOneTimeTokenBankAccountPaymentProfile Model.
  class GetOneTimeTokenBankAccountPaymentProfile < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :first_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :customer_id

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [BankAccountVault]
    attr_accessor :current_vault

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :vault_token

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_address

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_address_2

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_city

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_country

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_state

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_zip

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :bank_name

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :masked_bank_routing_number

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :masked_bank_account_number

    # Defaults to checking
    # @return [BankAccountType]
    attr_accessor :bank_account_type

    # Defaults to personal
    # @return [BankAccountHolderType]
    attr_accessor :bank_account_holder_type

    # Defaults to personal
    # @return [String]
    attr_accessor :payment_type

    # Defaults to personal
    # @return [TrueClass | FalseClass]
    attr_accessor :disabled

    # Defaults to personal
    # @return [Integer]
    attr_accessor :site_gateway_setting_id

    # Defaults to personal
    # @return [String]
    attr_accessor :customer_vault_token

    # Defaults to personal
    # @return [String]
    attr_accessor :gateway_handle

    # Defaults to personal
    # @return [TrueClass | FalseClass]
    attr_accessor :verified

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['customer_id'] = 'customer_id'
      @_hash['current_vault'] = 'current_vault'
      @_hash['vault_token'] = 'vault_token'
      @_hash['billing_address'] = 'billing_address'
      @_hash['billing_address_2'] = 'billing_address_2'
      @_hash['billing_city'] = 'billing_city'
      @_hash['billing_country'] = 'billing_country'
      @_hash['billing_state'] = 'billing_state'
      @_hash['billing_zip'] = 'billing_zip'
      @_hash['bank_name'] = 'bank_name'
      @_hash['masked_bank_routing_number'] = 'masked_bank_routing_number'
      @_hash['masked_bank_account_number'] = 'masked_bank_account_number'
      @_hash['bank_account_type'] = 'bank_account_type'
      @_hash['bank_account_holder_type'] = 'bank_account_holder_type'
      @_hash['payment_type'] = 'payment_type'
      @_hash['disabled'] = 'disabled'
      @_hash['site_gateway_setting_id'] = 'site_gateway_setting_id'
      @_hash['customer_vault_token'] = 'customer_vault_token'
      @_hash['gateway_handle'] = 'gateway_handle'
      @_hash['verified'] = 'verified'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        customer_id
        billing_address_2
        customer_vault_token
        gateway_handle
        verified
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        customer_id
        customer_vault_token
        gateway_handle
        verified
      ]
    end

    def initialize(first_name:, last_name:, current_vault:, vault_token:,
                   billing_address:, billing_city:, billing_country:,
                   billing_state:, billing_zip:, bank_name:,
                   masked_bank_routing_number:, masked_bank_account_number:,
                   bank_account_type:, bank_account_holder_type:, payment_type:,
                   disabled:, site_gateway_setting_id:, id: SKIP,
                   customer_id: SKIP, billing_address_2: SKIP,
                   customer_vault_token: SKIP, gateway_handle: SKIP,
                   verified: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @first_name = first_name
      @last_name = last_name
      @customer_id = customer_id unless customer_id == SKIP
      @current_vault = current_vault
      @vault_token = vault_token
      @billing_address = billing_address
      @billing_address_2 = billing_address_2 unless billing_address_2 == SKIP
      @billing_city = billing_city
      @billing_country = billing_country
      @billing_state = billing_state
      @billing_zip = billing_zip
      @bank_name = bank_name
      @masked_bank_routing_number = masked_bank_routing_number
      @masked_bank_account_number = masked_bank_account_number
      @bank_account_type = bank_account_type
      @bank_account_holder_type = bank_account_holder_type
      @payment_type = payment_type
      @disabled = disabled
      @site_gateway_setting_id = site_gateway_setting_id
      @customer_vault_token = customer_vault_token unless customer_vault_token == SKIP
      @gateway_handle = gateway_handle unless gateway_handle == SKIP
      @verified = verified unless verified == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      first_name = hash.key?('first_name') ? hash['first_name'] : nil
      last_name = hash.key?('last_name') ? hash['last_name'] : nil
      current_vault = hash.key?('current_vault') ? hash['current_vault'] : nil
      vault_token = hash.key?('vault_token') ? hash['vault_token'] : nil
      billing_address =
        hash.key?('billing_address') ? hash['billing_address'] : nil
      billing_city = hash.key?('billing_city') ? hash['billing_city'] : nil
      billing_country =
        hash.key?('billing_country') ? hash['billing_country'] : nil
      billing_state = hash.key?('billing_state') ? hash['billing_state'] : nil
      billing_zip = hash.key?('billing_zip') ? hash['billing_zip'] : nil
      bank_name = hash.key?('bank_name') ? hash['bank_name'] : nil
      masked_bank_routing_number =
        hash.key?('masked_bank_routing_number') ? hash['masked_bank_routing_number'] : nil
      masked_bank_account_number =
        hash.key?('masked_bank_account_number') ? hash['masked_bank_account_number'] : nil
      bank_account_type =
        hash.key?('bank_account_type') ? hash['bank_account_type'] : nil
      bank_account_holder_type =
        hash.key?('bank_account_holder_type') ? hash['bank_account_holder_type'] : nil
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : nil
      disabled = hash.key?('disabled') ? hash['disabled'] : nil
      site_gateway_setting_id =
        hash.key?('site_gateway_setting_id') ? hash['site_gateway_setting_id'] : nil
      id = hash.key?('id') ? hash['id'] : SKIP
      customer_id = hash.key?('customer_id') ? hash['customer_id'] : SKIP
      billing_address_2 =
        hash.key?('billing_address_2') ? hash['billing_address_2'] : SKIP
      customer_vault_token =
        hash.key?('customer_vault_token') ? hash['customer_vault_token'] : SKIP
      gateway_handle =
        hash.key?('gateway_handle') ? hash['gateway_handle'] : SKIP
      verified = hash.key?('verified') ? hash['verified'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      GetOneTimeTokenBankAccountPaymentProfile.new(first_name: first_name,
                                                   last_name: last_name,
                                                   current_vault: current_vault,
                                                   vault_token: vault_token,
                                                   billing_address: billing_address,
                                                   billing_city: billing_city,
                                                   billing_country: billing_country,
                                                   billing_state: billing_state,
                                                   billing_zip: billing_zip,
                                                   bank_name: bank_name,
                                                   masked_bank_routing_number: masked_bank_routing_number,
                                                   masked_bank_account_number: masked_bank_account_number,
                                                   bank_account_type: bank_account_type,
                                                   bank_account_holder_type: bank_account_holder_type,
                                                   payment_type: payment_type,
                                                   disabled: disabled,
                                                   site_gateway_setting_id: site_gateway_setting_id,
                                                   id: id,
                                                   customer_id: customer_id,
                                                   billing_address_2: billing_address_2,
                                                   customer_vault_token: customer_vault_token,
                                                   gateway_handle: gateway_handle,
                                                   verified: verified,
                                                   additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [GetOneTimeTokenBankAccountPaymentProfile | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.first_name,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.last_name,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.current_vault,
                                  ->(val) { BankAccountVault.validate(val) }) and
            APIHelper.valid_type?(value.vault_token,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.billing_address,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.billing_city,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.billing_country,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.billing_state,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.billing_zip,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.bank_name,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.masked_bank_routing_number,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.masked_bank_account_number,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.bank_account_type,
                                  ->(val) { BankAccountType.validate(val) }) and
            APIHelper.valid_type?(value.bank_account_holder_type,
                                  ->(val) { BankAccountHolderType.validate(val) }) and
            APIHelper.valid_type?(value.payment_type,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.disabled,
                                  ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass }) and
            APIHelper.valid_type?(value.site_gateway_setting_id,
                                  ->(val) { val.instance_of? Integer })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['first_name'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['last_name'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['current_vault'],
                                ->(val) { BankAccountVault.validate(val) }) and
          APIHelper.valid_type?(value['vault_token'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['billing_address'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['billing_city'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['billing_country'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['billing_state'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['billing_zip'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['bank_name'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['masked_bank_routing_number'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['masked_bank_account_number'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['bank_account_type'],
                                ->(val) { BankAccountType.validate(val) }) and
          APIHelper.valid_type?(value['bank_account_holder_type'],
                                ->(val) { BankAccountHolderType.validate(val) }) and
          APIHelper.valid_type?(value['payment_type'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['disabled'],
                                ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass }) and
          APIHelper.valid_type?(value['site_gateway_setting_id'],
                                ->(val) { val.instance_of? Integer })
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, first_name: #{@first_name}, last_name: #{@last_name},"\
      " customer_id: #{@customer_id}, current_vault: #{@current_vault}, vault_token:"\
      " #{@vault_token}, billing_address: #{@billing_address}, billing_address_2:"\
      " #{@billing_address_2}, billing_city: #{@billing_city}, billing_country:"\
      " #{@billing_country}, billing_state: #{@billing_state}, billing_zip: #{@billing_zip},"\
      " bank_name: #{@bank_name}, masked_bank_routing_number: #{@masked_bank_routing_number},"\
      " masked_bank_account_number: #{@masked_bank_account_number}, bank_account_type:"\
      " #{@bank_account_type}, bank_account_holder_type: #{@bank_account_holder_type},"\
      " payment_type: #{@payment_type}, disabled: #{@disabled}, site_gateway_setting_id:"\
      " #{@site_gateway_setting_id}, customer_vault_token: #{@customer_vault_token},"\
      " gateway_handle: #{@gateway_handle}, verified: #{@verified}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, first_name: #{@first_name.inspect}, last_name:"\
      " #{@last_name.inspect}, customer_id: #{@customer_id.inspect}, current_vault:"\
      " #{@current_vault.inspect}, vault_token: #{@vault_token.inspect}, billing_address:"\
      " #{@billing_address.inspect}, billing_address_2: #{@billing_address_2.inspect},"\
      " billing_city: #{@billing_city.inspect}, billing_country: #{@billing_country.inspect},"\
      " billing_state: #{@billing_state.inspect}, billing_zip: #{@billing_zip.inspect}, bank_name:"\
      " #{@bank_name.inspect}, masked_bank_routing_number: #{@masked_bank_routing_number.inspect},"\
      " masked_bank_account_number: #{@masked_bank_account_number.inspect}, bank_account_type:"\
      " #{@bank_account_type.inspect}, bank_account_holder_type:"\
      " #{@bank_account_holder_type.inspect}, payment_type: #{@payment_type.inspect}, disabled:"\
      " #{@disabled.inspect}, site_gateway_setting_id: #{@site_gateway_setting_id.inspect},"\
      " customer_vault_token: #{@customer_vault_token.inspect}, gateway_handle:"\
      " #{@gateway_handle.inspect}, verified: #{@verified.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
