# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Customer Model.
  class Customer < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The first name of the customer
    # @return [String]
    attr_accessor :first_name

    # The last name of the customer
    # @return [String]
    attr_accessor :last_name

    # The email address of the customer
    # @return [String]
    attr_accessor :email

    # A comma-separated list of emails that should be cc’d on all customer
    # communications (i.e. “joe@example.com, sue@example.com”)
    # @return [String]
    attr_accessor :cc_emails

    # The organization of the customer
    # @return [String]
    attr_accessor :organization

    # The unique identifier used within your own application for this customer
    # @return [String]
    attr_accessor :reference

    # The customer ID in Chargify
    # @return [Integer]
    attr_accessor :id

    # The timestamp in which the customer object was created in Chargify
    # @return [DateTime]
    attr_accessor :created_at

    # The timestamp in which the customer object was last edited
    # @return [DateTime]
    attr_accessor :updated_at

    # The customer’s shipping street address (i.e. “123 Main St.”)
    # @return [String]
    attr_accessor :address

    # Second line of the customer’s shipping address i.e. “Apt. 100”
    # @return [String]
    attr_accessor :address_2

    # The customer’s shipping address city (i.e. “Boston”)
    # @return [String]
    attr_accessor :city

    # The customer’s shipping address state (i.e. “MA”)
    # @return [String]
    attr_accessor :state

    # The customer's full name of state
    # @return [String]
    attr_accessor :state_name

    # The customer’s shipping address zip code (i.e. “12345”)
    # @return [String]
    attr_accessor :zip

    # The customer shipping address country
    # @return [String]
    attr_accessor :country

    # The customer's full name of country
    # @return [String]
    attr_accessor :country_name

    # The phone number of the customer
    # @return [String]
    attr_accessor :phone

    # Is the customer verified to use ACH as a payment method. Available only on
    # Authorize.Net gateway
    # @return [TrueClass | FalseClass]
    attr_accessor :verified

    # The timestamp of when the Billing Portal entry was created at for the
    # customer
    # @return [DateTime]
    attr_accessor :portal_customer_created_at

    # The timestamp of when the Billing Portal invite was last sent at
    # @return [DateTime]
    attr_accessor :portal_invite_last_sent_at

    # The timestamp of when the Billing Portal invite was last accepted
    # @return [DateTime]
    attr_accessor :portal_invite_last_accepted_at

    # The tax exempt status for the customer. Acceptable values are true or 1
    # for true and false or 0 for false.
    # @return [TrueClass | FalseClass]
    attr_accessor :tax_exempt

    # The VAT business identification number for the customer. This number is
    # used to determine VAT tax opt out rules. It is not validated when added or
    # updated on a customer record. Instead, it is validated via VIES before
    # calculating taxes. Only valid business identification numbers will allow
    # for VAT opt out.
    # @return [String]
    attr_accessor :vat_number

    # The parent ID in Chargify if applicable. Parent is another Customer
    # object.
    # @return [Integer]
    attr_accessor :parent_id

    # The locale for the customer to identify language-region
    # @return [String]
    attr_accessor :locale

    # The locale for the customer to identify language-region
    # @return [String]
    attr_accessor :default_subscription_group_uid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['email'] = 'email'
      @_hash['cc_emails'] = 'cc_emails'
      @_hash['organization'] = 'organization'
      @_hash['reference'] = 'reference'
      @_hash['id'] = 'id'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['address'] = 'address'
      @_hash['address_2'] = 'address_2'
      @_hash['city'] = 'city'
      @_hash['state'] = 'state'
      @_hash['state_name'] = 'state_name'
      @_hash['zip'] = 'zip'
      @_hash['country'] = 'country'
      @_hash['country_name'] = 'country_name'
      @_hash['phone'] = 'phone'
      @_hash['verified'] = 'verified'
      @_hash['portal_customer_created_at'] = 'portal_customer_created_at'
      @_hash['portal_invite_last_sent_at'] = 'portal_invite_last_sent_at'
      @_hash['portal_invite_last_accepted_at'] =
        'portal_invite_last_accepted_at'
      @_hash['tax_exempt'] = 'tax_exempt'
      @_hash['vat_number'] = 'vat_number'
      @_hash['parent_id'] = 'parent_id'
      @_hash['locale'] = 'locale'
      @_hash['default_subscription_group_uid'] =
        'default_subscription_group_uid'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        first_name
        last_name
        email
        cc_emails
        organization
        reference
        id
        created_at
        updated_at
        address
        address_2
        city
        state
        state_name
        zip
        country
        country_name
        phone
        verified
        portal_customer_created_at
        portal_invite_last_sent_at
        portal_invite_last_accepted_at
        tax_exempt
        vat_number
        parent_id
        locale
        default_subscription_group_uid
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        cc_emails
        organization
        reference
        address
        address_2
        city
        state
        state_name
        zip
        country
        country_name
        phone
        verified
        portal_customer_created_at
        portal_invite_last_sent_at
        portal_invite_last_accepted_at
        vat_number
        parent_id
        locale
        default_subscription_group_uid
      ]
    end

    def initialize(first_name = SKIP,
                   last_name = SKIP,
                   email = SKIP,
                   cc_emails = SKIP,
                   organization = SKIP,
                   reference = SKIP,
                   id = SKIP,
                   created_at = SKIP,
                   updated_at = SKIP,
                   address = SKIP,
                   address_2 = SKIP,
                   city = SKIP,
                   state = SKIP,
                   state_name = SKIP,
                   zip = SKIP,
                   country = SKIP,
                   country_name = SKIP,
                   phone = SKIP,
                   verified = SKIP,
                   portal_customer_created_at = SKIP,
                   portal_invite_last_sent_at = SKIP,
                   portal_invite_last_accepted_at = SKIP,
                   tax_exempt = SKIP,
                   vat_number = SKIP,
                   parent_id = SKIP,
                   locale = SKIP,
                   default_subscription_group_uid = SKIP,
                   additional_properties = {})
      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @email = email unless email == SKIP
      @cc_emails = cc_emails unless cc_emails == SKIP
      @organization = organization unless organization == SKIP
      @reference = reference unless reference == SKIP
      @id = id unless id == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @address = address unless address == SKIP
      @address_2 = address_2 unless address_2 == SKIP
      @city = city unless city == SKIP
      @state = state unless state == SKIP
      @state_name = state_name unless state_name == SKIP
      @zip = zip unless zip == SKIP
      @country = country unless country == SKIP
      @country_name = country_name unless country_name == SKIP
      @phone = phone unless phone == SKIP
      @verified = verified unless verified == SKIP
      unless portal_customer_created_at == SKIP
        @portal_customer_created_at =
          portal_customer_created_at
      end
      unless portal_invite_last_sent_at == SKIP
        @portal_invite_last_sent_at =
          portal_invite_last_sent_at
      end
      unless portal_invite_last_accepted_at == SKIP
        @portal_invite_last_accepted_at =
          portal_invite_last_accepted_at
      end
      @tax_exempt = tax_exempt unless tax_exempt == SKIP
      @vat_number = vat_number unless vat_number == SKIP
      @parent_id = parent_id unless parent_id == SKIP
      @locale = locale unless locale == SKIP
      unless default_subscription_group_uid == SKIP
        @default_subscription_group_uid =
          default_subscription_group_uid
      end

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      first_name = hash.key?('first_name') ? hash['first_name'] : SKIP
      last_name = hash.key?('last_name') ? hash['last_name'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      cc_emails = hash.key?('cc_emails') ? hash['cc_emails'] : SKIP
      organization = hash.key?('organization') ? hash['organization'] : SKIP
      reference = hash.key?('reference') ? hash['reference'] : SKIP
      id = hash.key?('id') ? hash['id'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      updated_at = if hash.key?('updated_at')
                     (DateTimeHelper.from_rfc3339(hash['updated_at']) if hash['updated_at'])
                   else
                     SKIP
                   end
      address = hash.key?('address') ? hash['address'] : SKIP
      address_2 = hash.key?('address_2') ? hash['address_2'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP
      state_name = hash.key?('state_name') ? hash['state_name'] : SKIP
      zip = hash.key?('zip') ? hash['zip'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP
      country_name = hash.key?('country_name') ? hash['country_name'] : SKIP
      phone = hash.key?('phone') ? hash['phone'] : SKIP
      verified = hash.key?('verified') ? hash['verified'] : SKIP
      portal_customer_created_at = if hash.key?('portal_customer_created_at')
                                     (DateTimeHelper.from_rfc3339(hash['portal_customer_created_at']) if hash['portal_customer_created_at'])
                                   else
                                     SKIP
                                   end
      portal_invite_last_sent_at = if hash.key?('portal_invite_last_sent_at')
                                     (DateTimeHelper.from_rfc3339(hash['portal_invite_last_sent_at']) if hash['portal_invite_last_sent_at'])
                                   else
                                     SKIP
                                   end
      portal_invite_last_accepted_at = if hash.key?('portal_invite_last_accepted_at')
                                         (DateTimeHelper.from_rfc3339(hash['portal_invite_last_accepted_at']) if hash['portal_invite_last_accepted_at'])
                                       else
                                         SKIP
                                       end
      tax_exempt = hash.key?('tax_exempt') ? hash['tax_exempt'] : SKIP
      vat_number = hash.key?('vat_number') ? hash['vat_number'] : SKIP
      parent_id = hash.key?('parent_id') ? hash['parent_id'] : SKIP
      locale = hash.key?('locale') ? hash['locale'] : SKIP
      default_subscription_group_uid =
        hash.key?('default_subscription_group_uid') ? hash['default_subscription_group_uid'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      Customer.new(first_name,
                   last_name,
                   email,
                   cc_emails,
                   organization,
                   reference,
                   id,
                   created_at,
                   updated_at,
                   address,
                   address_2,
                   city,
                   state,
                   state_name,
                   zip,
                   country,
                   country_name,
                   phone,
                   verified,
                   portal_customer_created_at,
                   portal_invite_last_sent_at,
                   portal_invite_last_accepted_at,
                   tax_exempt,
                   vat_number,
                   parent_id,
                   locale,
                   default_subscription_group_uid,
                   hash)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_custom_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end

    def to_custom_portal_customer_created_at
      DateTimeHelper.to_rfc3339(portal_customer_created_at)
    end

    def to_custom_portal_invite_last_sent_at
      DateTimeHelper.to_rfc3339(portal_invite_last_sent_at)
    end

    def to_custom_portal_invite_last_accepted_at
      DateTimeHelper.to_rfc3339(portal_invite_last_accepted_at)
    end

    # Validates an instance of the object from a given value.
    # @param [Customer | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
