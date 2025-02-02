# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # BankAccountPaymentProfile Model.
  class BankAccountPaymentProfile < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Chargify-assigned ID of the stored bank account. This value can be
    # used as an input to payment_profile_id when creating a subscription, in
    # order to re-use a stored payment profile for the same customer
    # @return [Integer]
    attr_accessor :id

    # The first name of the bank account holder
    # @return [String]
    attr_accessor :first_name

    # The last name of the bank account holder
    # @return [String]
    attr_accessor :last_name

    # The Chargify-assigned id for the customer record to which the bank account
    # belongs
    # @return [Integer]
    attr_accessor :customer_id

    # The vault that stores the payment profile with the provided vault_token.
    # Use `bogus` for testing.
    # @return [BankAccountVault]
    attr_accessor :current_vault

    # The “token” provided by your vault storage for an already stored payment
    # profile
    # @return [String]
    attr_accessor :vault_token

    # The current billing street address for the bank account
    # @return [String]
    attr_accessor :billing_address

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

    # (only for Authorize.Net CIM storage): the customerProfileId for the owner
    # of the customerPaymentProfileId provided as the vault_token.
    # @return [String]
    attr_accessor :customer_vault_token

    # The current billing street address, second line, for the bank account
    # @return [String]
    attr_accessor :billing_address_2

    # The bank where the account resides
    # @return [String]
    attr_accessor :bank_name

    # A string representation of the stored bank routing number with all but the
    # last 4 digits marked with X’s (i.e. ‘XXXXXXX1111’). payment_type will be
    # bank_account
    # @return [String]
    attr_accessor :masked_bank_routing_number

    # A string representation of the stored bank account number with all but the
    # last 4 digits marked with X’s (i.e. ‘XXXXXXX1111’)
    # @return [String]
    attr_accessor :masked_bank_account_number

    # Defaults to checking
    # @return [BankAccountType]
    attr_accessor :bank_account_type

    # Defaults to personal
    # @return [BankAccountHolderType]
    attr_accessor :bank_account_holder_type

    # Defaults to personal
    # @return [PaymentType]
    attr_accessor :payment_type

    # denotes whether a bank account has been verified by providing the amounts
    # of two small deposits made into the account
    # @return [TrueClass | FalseClass]
    attr_accessor :verified

    # denotes whether a bank account has been verified by providing the amounts
    # of two small deposits made into the account
    # @return [Integer]
    attr_accessor :site_gateway_setting_id

    # denotes whether a bank account has been verified by providing the amounts
    # of two small deposits made into the account
    # @return [String]
    attr_accessor :gateway_handle

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
      @_hash['billing_city'] = 'billing_city'
      @_hash['billing_state'] = 'billing_state'
      @_hash['billing_zip'] = 'billing_zip'
      @_hash['billing_country'] = 'billing_country'
      @_hash['customer_vault_token'] = 'customer_vault_token'
      @_hash['billing_address_2'] = 'billing_address_2'
      @_hash['bank_name'] = 'bank_name'
      @_hash['masked_bank_routing_number'] = 'masked_bank_routing_number'
      @_hash['masked_bank_account_number'] = 'masked_bank_account_number'
      @_hash['bank_account_type'] = 'bank_account_type'
      @_hash['bank_account_holder_type'] = 'bank_account_holder_type'
      @_hash['payment_type'] = 'payment_type'
      @_hash['verified'] = 'verified'
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
        bank_name
        masked_bank_routing_number
        bank_account_type
        bank_account_holder_type
        verified
        site_gateway_setting_id
        gateway_handle
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
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

    def initialize(masked_bank_account_number:,
                   payment_type: PaymentType::BANK_ACCOUNT, id: SKIP,
                   first_name: SKIP, last_name: SKIP, customer_id: SKIP,
                   current_vault: SKIP, vault_token: SKIP,
                   billing_address: SKIP, billing_city: SKIP,
                   billing_state: SKIP, billing_zip: SKIP,
                   billing_country: SKIP, customer_vault_token: SKIP,
                   billing_address_2: SKIP, bank_name: SKIP,
                   masked_bank_routing_number: SKIP, bank_account_type: SKIP,
                   bank_account_holder_type: SKIP, verified: false,
                   site_gateway_setting_id: SKIP, gateway_handle: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
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
      @bank_name = bank_name unless bank_name == SKIP
      unless masked_bank_routing_number == SKIP
        @masked_bank_routing_number =
          masked_bank_routing_number
      end
      @masked_bank_account_number = masked_bank_account_number
      @bank_account_type = bank_account_type unless bank_account_type == SKIP
      @bank_account_holder_type = bank_account_holder_type unless bank_account_holder_type == SKIP
      @payment_type = payment_type
      @verified = verified unless verified == SKIP
      @site_gateway_setting_id = site_gateway_setting_id unless site_gateway_setting_id == SKIP
      @gateway_handle = gateway_handle unless gateway_handle == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      masked_bank_account_number =
        hash.key?('masked_bank_account_number') ? hash['masked_bank_account_number'] : nil
      payment_type = hash['payment_type'] ||= PaymentType::BANK_ACCOUNT
      id = hash.key?('id') ? hash['id'] : SKIP
      first_name = hash.key?('first_name') ? hash['first_name'] : SKIP
      last_name = hash.key?('last_name') ? hash['last_name'] : SKIP
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
      bank_name = hash.key?('bank_name') ? hash['bank_name'] : SKIP
      masked_bank_routing_number =
        hash.key?('masked_bank_routing_number') ? hash['masked_bank_routing_number'] : SKIP
      bank_account_type =
        hash.key?('bank_account_type') ? hash['bank_account_type'] : SKIP
      bank_account_holder_type =
        hash.key?('bank_account_holder_type') ? hash['bank_account_holder_type'] : SKIP
      verified = hash['verified'] ||= false
      site_gateway_setting_id =
        hash.key?('site_gateway_setting_id') ? hash['site_gateway_setting_id'] : SKIP
      gateway_handle =
        hash.key?('gateway_handle') ? hash['gateway_handle'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      BankAccountPaymentProfile.new(masked_bank_account_number: masked_bank_account_number,
                                    payment_type: payment_type,
                                    id: id,
                                    first_name: first_name,
                                    last_name: last_name,
                                    customer_id: customer_id,
                                    current_vault: current_vault,
                                    vault_token: vault_token,
                                    billing_address: billing_address,
                                    billing_city: billing_city,
                                    billing_state: billing_state,
                                    billing_zip: billing_zip,
                                    billing_country: billing_country,
                                    customer_vault_token: customer_vault_token,
                                    billing_address_2: billing_address_2,
                                    bank_name: bank_name,
                                    masked_bank_routing_number: masked_bank_routing_number,
                                    bank_account_type: bank_account_type,
                                    bank_account_holder_type: bank_account_holder_type,
                                    verified: verified,
                                    site_gateway_setting_id: site_gateway_setting_id,
                                    gateway_handle: gateway_handle,
                                    additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [BankAccountPaymentProfile | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.masked_bank_account_number,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.payment_type,
                                  ->(val) { PaymentType.validate(val) })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['masked_bank_account_number'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['payment_type'],
                                ->(val) { PaymentType.validate(val) })
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, first_name: #{@first_name}, last_name: #{@last_name},"\
      " customer_id: #{@customer_id}, current_vault: #{@current_vault}, vault_token:"\
      " #{@vault_token}, billing_address: #{@billing_address}, billing_city: #{@billing_city},"\
      " billing_state: #{@billing_state}, billing_zip: #{@billing_zip}, billing_country:"\
      " #{@billing_country}, customer_vault_token: #{@customer_vault_token}, billing_address_2:"\
      " #{@billing_address_2}, bank_name: #{@bank_name}, masked_bank_routing_number:"\
      " #{@masked_bank_routing_number}, masked_bank_account_number:"\
      " #{@masked_bank_account_number}, bank_account_type: #{@bank_account_type},"\
      " bank_account_holder_type: #{@bank_account_holder_type}, payment_type: #{@payment_type},"\
      " verified: #{@verified}, site_gateway_setting_id: #{@site_gateway_setting_id},"\
      " gateway_handle: #{@gateway_handle}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, first_name: #{@first_name.inspect}, last_name:"\
      " #{@last_name.inspect}, customer_id: #{@customer_id.inspect}, current_vault:"\
      " #{@current_vault.inspect}, vault_token: #{@vault_token.inspect}, billing_address:"\
      " #{@billing_address.inspect}, billing_city: #{@billing_city.inspect}, billing_state:"\
      " #{@billing_state.inspect}, billing_zip: #{@billing_zip.inspect}, billing_country:"\
      " #{@billing_country.inspect}, customer_vault_token: #{@customer_vault_token.inspect},"\
      " billing_address_2: #{@billing_address_2.inspect}, bank_name: #{@bank_name.inspect},"\
      " masked_bank_routing_number: #{@masked_bank_routing_number.inspect},"\
      " masked_bank_account_number: #{@masked_bank_account_number.inspect}, bank_account_type:"\
      " #{@bank_account_type.inspect}, bank_account_holder_type:"\
      " #{@bank_account_holder_type.inspect}, payment_type: #{@payment_type.inspect}, verified:"\
      " #{@verified.inspect}, site_gateway_setting_id: #{@site_gateway_setting_id.inspect},"\
      " gateway_handle: #{@gateway_handle.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
