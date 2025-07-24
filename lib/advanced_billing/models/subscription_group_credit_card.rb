# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # SubscriptionGroupCreditCard Model.
  class SubscriptionGroupCreditCard < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :chargify_token

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :vault_token

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [CreditCardVault]
    attr_accessor :current_vault

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :gateway_handle

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :first_name

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :last_name

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_address

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_address_2

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_city

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_state

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_zip

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :billing_country

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [Object]
    attr_accessor :full_number

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [Object]
    attr_accessor :expiration_month

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [Object]
    attr_accessor :expiration_year

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [String]
    attr_accessor :last_four

    # The type of card used.
    # @return [CardType]
    attr_accessor :card_type

    # The type of card used.
    # @return [String]
    attr_accessor :customer_vault_token

    # The type of card used.
    # @return [String]
    attr_accessor :cvv

    # The type of card used.
    # @return [String]
    attr_accessor :payment_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['chargify_token'] = 'chargify_token'
      @_hash['vault_token'] = 'vault_token'
      @_hash['current_vault'] = 'current_vault'
      @_hash['gateway_handle'] = 'gateway_handle'
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['billing_address'] = 'billing_address'
      @_hash['billing_address_2'] = 'billing_address_2'
      @_hash['billing_city'] = 'billing_city'
      @_hash['billing_state'] = 'billing_state'
      @_hash['billing_zip'] = 'billing_zip'
      @_hash['billing_country'] = 'billing_country'
      @_hash['full_number'] = 'full_number'
      @_hash['expiration_month'] = 'expiration_month'
      @_hash['expiration_year'] = 'expiration_year'
      @_hash['last_four'] = 'last_four'
      @_hash['card_type'] = 'card_type'
      @_hash['customer_vault_token'] = 'customer_vault_token'
      @_hash['cvv'] = 'cvv'
      @_hash['payment_type'] = 'payment_type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        chargify_token
        vault_token
        current_vault
        gateway_handle
        first_name
        last_name
        billing_address
        billing_address_2
        billing_city
        billing_state
        billing_zip
        billing_country
        full_number
        expiration_month
        expiration_year
        last_four
        card_type
        customer_vault_token
        cvv
        payment_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(chargify_token: SKIP, vault_token: SKIP, current_vault: SKIP,
                   gateway_handle: SKIP, first_name: SKIP, last_name: SKIP,
                   billing_address: SKIP, billing_address_2: SKIP,
                   billing_city: SKIP, billing_state: SKIP, billing_zip: SKIP,
                   billing_country: SKIP, full_number: SKIP,
                   expiration_month: SKIP, expiration_year: SKIP,
                   last_four: SKIP, card_type: SKIP, customer_vault_token: SKIP,
                   cvv: SKIP, payment_type: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @chargify_token = chargify_token unless chargify_token == SKIP
      @vault_token = vault_token unless vault_token == SKIP
      @current_vault = current_vault unless current_vault == SKIP
      @gateway_handle = gateway_handle unless gateway_handle == SKIP
      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @billing_address_2 = billing_address_2 unless billing_address_2 == SKIP
      @billing_city = billing_city unless billing_city == SKIP
      @billing_state = billing_state unless billing_state == SKIP
      @billing_zip = billing_zip unless billing_zip == SKIP
      @billing_country = billing_country unless billing_country == SKIP
      @full_number = full_number unless full_number == SKIP
      @expiration_month = expiration_month unless expiration_month == SKIP
      @expiration_year = expiration_year unless expiration_year == SKIP
      @last_four = last_four unless last_four == SKIP
      @card_type = card_type unless card_type == SKIP
      @customer_vault_token = customer_vault_token unless customer_vault_token == SKIP
      @cvv = cvv unless cvv == SKIP
      @payment_type = payment_type unless payment_type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      chargify_token =
        hash.key?('chargify_token') ? hash['chargify_token'] : SKIP
      vault_token = hash.key?('vault_token') ? hash['vault_token'] : SKIP
      current_vault = hash.key?('current_vault') ? hash['current_vault'] : SKIP
      gateway_handle =
        hash.key?('gateway_handle') ? hash['gateway_handle'] : SKIP
      first_name = hash.key?('first_name') ? hash['first_name'] : SKIP
      last_name = hash.key?('last_name') ? hash['last_name'] : SKIP
      billing_address =
        hash.key?('billing_address') ? hash['billing_address'] : SKIP
      billing_address_2 =
        hash.key?('billing_address_2') ? hash['billing_address_2'] : SKIP
      billing_city = hash.key?('billing_city') ? hash['billing_city'] : SKIP
      billing_state = hash.key?('billing_state') ? hash['billing_state'] : SKIP
      billing_zip = hash.key?('billing_zip') ? hash['billing_zip'] : SKIP
      billing_country =
        hash.key?('billing_country') ? hash['billing_country'] : SKIP
      full_number = hash.key?('full_number') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionGroupCreditCardFullNumber), hash['full_number']
      ) : SKIP
      expiration_month = hash.key?('expiration_month') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionGroupCreditCardExpirationMonth), hash['expiration_month']
      ) : SKIP
      expiration_year = hash.key?('expiration_year') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionGroupCreditCardExpirationYear), hash['expiration_year']
      ) : SKIP
      last_four = hash.key?('last_four') ? hash['last_four'] : SKIP
      card_type = hash.key?('card_type') ? hash['card_type'] : SKIP
      customer_vault_token =
        hash.key?('customer_vault_token') ? hash['customer_vault_token'] : SKIP
      cvv = hash.key?('cvv') ? hash['cvv'] : SKIP
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionGroupCreditCard.new(chargify_token: chargify_token,
                                      vault_token: vault_token,
                                      current_vault: current_vault,
                                      gateway_handle: gateway_handle,
                                      first_name: first_name,
                                      last_name: last_name,
                                      billing_address: billing_address,
                                      billing_address_2: billing_address_2,
                                      billing_city: billing_city,
                                      billing_state: billing_state,
                                      billing_zip: billing_zip,
                                      billing_country: billing_country,
                                      full_number: full_number,
                                      expiration_month: expiration_month,
                                      expiration_year: expiration_year,
                                      last_four: last_four,
                                      card_type: card_type,
                                      customer_vault_token: customer_vault_token,
                                      cvv: cvv,
                                      payment_type: payment_type,
                                      additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [SubscriptionGroupCreditCard | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} chargify_token: #{@chargify_token}, vault_token: #{@vault_token},"\
      " current_vault: #{@current_vault}, gateway_handle: #{@gateway_handle}, first_name:"\
      " #{@first_name}, last_name: #{@last_name}, billing_address: #{@billing_address},"\
      " billing_address_2: #{@billing_address_2}, billing_city: #{@billing_city}, billing_state:"\
      " #{@billing_state}, billing_zip: #{@billing_zip}, billing_country: #{@billing_country},"\
      " full_number: #{@full_number}, expiration_month: #{@expiration_month}, expiration_year:"\
      " #{@expiration_year}, last_four: #{@last_four}, card_type: #{@card_type},"\
      " customer_vault_token: #{@customer_vault_token}, cvv: #{@cvv}, payment_type:"\
      " #{@payment_type}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} chargify_token: #{@chargify_token.inspect}, vault_token:"\
      " #{@vault_token.inspect}, current_vault: #{@current_vault.inspect}, gateway_handle:"\
      " #{@gateway_handle.inspect}, first_name: #{@first_name.inspect}, last_name:"\
      " #{@last_name.inspect}, billing_address: #{@billing_address.inspect}, billing_address_2:"\
      " #{@billing_address_2.inspect}, billing_city: #{@billing_city.inspect}, billing_state:"\
      " #{@billing_state.inspect}, billing_zip: #{@billing_zip.inspect}, billing_country:"\
      " #{@billing_country.inspect}, full_number: #{@full_number.inspect}, expiration_month:"\
      " #{@expiration_month.inspect}, expiration_year: #{@expiration_year.inspect}, last_four:"\
      " #{@last_four.inspect}, card_type: #{@card_type.inspect}, customer_vault_token:"\
      " #{@customer_vault_token.inspect}, cvv: #{@cvv.inspect}, payment_type:"\
      " #{@payment_type.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
