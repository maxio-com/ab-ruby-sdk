# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # UpdatePaymentProfile Model.
  class UpdatePaymentProfile < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The first name of the card holder.
    # @return [String]
    attr_accessor :first_name

    # The last name of the card holder.
    # @return [String]
    attr_accessor :last_name

    # The full credit card number
    # @return [String]
    attr_accessor :full_number

    # The type of card used.
    # @return [CardType]
    attr_accessor :card_type

    # (Optional when performing an Import via vault_token, required otherwise)
    # The 1- or 2-digit credit card expiration month, as an integer or string,
    # i.e. 5
    # @return [String]
    attr_accessor :expiration_month

    # (Optional when performing a Import via vault_token, required otherwise)
    # The 4-digit credit card expiration year, as an integer or string, i.e.
    # 2012
    # @return [String]
    attr_accessor :expiration_year

    # The vault that stores the payment profile with the provided `vault_token`.
    # Use `bogus` for testing.
    # @return [AllVaults]
    attr_accessor :current_vault

    # The credit card or bank account billing street address (i.e. 123 Main
    # St.). This value is merely passed through to the payment gateway.
    # @return [String]
    attr_accessor :billing_address

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

    # The credit card or bank account billing address zip code (i.e. 12345).
    # This value is merely passed through to the payment gateway.
    # @return [String]
    attr_accessor :billing_zip

    # The credit card or bank account billing address country, required in
    # [ISO_3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
    # format (i.e. “US”). This value is merely passed through to the payment
    # gateway. Some gateways require country codes in a specific format. Please
    # check your gateway’s documentation. If creating an ACH subscription, only
    # US is supported at this time.
    # @return [String]
    attr_accessor :billing_country

    # Second line of the customer’s billing address i.e. Apt. 100
    # @return [String]
    attr_accessor :billing_address_2

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['full_number'] = 'full_number'
      @_hash['card_type'] = 'card_type'
      @_hash['expiration_month'] = 'expiration_month'
      @_hash['expiration_year'] = 'expiration_year'
      @_hash['current_vault'] = 'current_vault'
      @_hash['billing_address'] = 'billing_address'
      @_hash['billing_city'] = 'billing_city'
      @_hash['billing_state'] = 'billing_state'
      @_hash['billing_zip'] = 'billing_zip'
      @_hash['billing_country'] = 'billing_country'
      @_hash['billing_address_2'] = 'billing_address_2'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        first_name
        last_name
        full_number
        card_type
        expiration_month
        expiration_year
        current_vault
        billing_address
        billing_city
        billing_state
        billing_zip
        billing_country
        billing_address_2
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        billing_address_2
      ]
    end

    def initialize(first_name: SKIP, last_name: SKIP, full_number: SKIP,
                   card_type: SKIP, expiration_month: SKIP,
                   expiration_year: SKIP, current_vault: SKIP,
                   billing_address: SKIP, billing_city: SKIP,
                   billing_state: SKIP, billing_zip: SKIP,
                   billing_country: SKIP, billing_address_2: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @full_number = full_number unless full_number == SKIP
      @card_type = card_type unless card_type == SKIP
      @expiration_month = expiration_month unless expiration_month == SKIP
      @expiration_year = expiration_year unless expiration_year == SKIP
      @current_vault = current_vault unless current_vault == SKIP
      @billing_address = billing_address unless billing_address == SKIP
      @billing_city = billing_city unless billing_city == SKIP
      @billing_state = billing_state unless billing_state == SKIP
      @billing_zip = billing_zip unless billing_zip == SKIP
      @billing_country = billing_country unless billing_country == SKIP
      @billing_address_2 = billing_address_2 unless billing_address_2 == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      first_name = hash.key?('first_name') ? hash['first_name'] : SKIP
      last_name = hash.key?('last_name') ? hash['last_name'] : SKIP
      full_number = hash.key?('full_number') ? hash['full_number'] : SKIP
      card_type = hash.key?('card_type') ? hash['card_type'] : SKIP
      expiration_month =
        hash.key?('expiration_month') ? hash['expiration_month'] : SKIP
      expiration_year =
        hash.key?('expiration_year') ? hash['expiration_year'] : SKIP
      current_vault = hash.key?('current_vault') ? hash['current_vault'] : SKIP
      billing_address =
        hash.key?('billing_address') ? hash['billing_address'] : SKIP
      billing_city = hash.key?('billing_city') ? hash['billing_city'] : SKIP
      billing_state = hash.key?('billing_state') ? hash['billing_state'] : SKIP
      billing_zip = hash.key?('billing_zip') ? hash['billing_zip'] : SKIP
      billing_country =
        hash.key?('billing_country') ? hash['billing_country'] : SKIP
      billing_address_2 =
        hash.key?('billing_address_2') ? hash['billing_address_2'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdatePaymentProfile.new(first_name: first_name,
                               last_name: last_name,
                               full_number: full_number,
                               card_type: card_type,
                               expiration_month: expiration_month,
                               expiration_year: expiration_year,
                               current_vault: current_vault,
                               billing_address: billing_address,
                               billing_city: billing_city,
                               billing_state: billing_state,
                               billing_zip: billing_zip,
                               billing_country: billing_country,
                               billing_address_2: billing_address_2,
                               additional_properties: additional_properties)
    end
  end
end
