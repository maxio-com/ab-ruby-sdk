# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # UpdateCustomer Model.
  class UpdateCustomer < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :first_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :cc_emails

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :organization

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :reference

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :address

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :address_2

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :city

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :state

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :zip

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :country

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :phone

    # Set a specific language on a customer record.
    # @return [String]
    attr_accessor :locale

    # Set a specific language on a customer record.
    # @return [String]
    attr_accessor :vat_number

    # Set a specific language on a customer record.
    # @return [TrueClass | FalseClass]
    attr_accessor :tax_exempt

    # Set a specific language on a customer record.
    # @return [String]
    attr_accessor :tax_exempt_reason

    # Set a specific language on a customer record.
    # @return [Integer]
    attr_accessor :parent_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['email'] = 'email'
      @_hash['cc_emails'] = 'cc_emails'
      @_hash['organization'] = 'organization'
      @_hash['reference'] = 'reference'
      @_hash['address'] = 'address'
      @_hash['address_2'] = 'address_2'
      @_hash['city'] = 'city'
      @_hash['state'] = 'state'
      @_hash['zip'] = 'zip'
      @_hash['country'] = 'country'
      @_hash['phone'] = 'phone'
      @_hash['locale'] = 'locale'
      @_hash['vat_number'] = 'vat_number'
      @_hash['tax_exempt'] = 'tax_exempt'
      @_hash['tax_exempt_reason'] = 'tax_exempt_reason'
      @_hash['parent_id'] = 'parent_id'
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
        address
        address_2
        city
        state
        zip
        country
        phone
        locale
        vat_number
        tax_exempt
        tax_exempt_reason
        parent_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        parent_id
      ]
    end

    def initialize(first_name = SKIP,
                   last_name = SKIP,
                   email = SKIP,
                   cc_emails = SKIP,
                   organization = SKIP,
                   reference = SKIP,
                   address = SKIP,
                   address_2 = SKIP,
                   city = SKIP,
                   state = SKIP,
                   zip = SKIP,
                   country = SKIP,
                   phone = SKIP,
                   locale = SKIP,
                   vat_number = SKIP,
                   tax_exempt = SKIP,
                   tax_exempt_reason = SKIP,
                   parent_id = SKIP)
      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @email = email unless email == SKIP
      @cc_emails = cc_emails unless cc_emails == SKIP
      @organization = organization unless organization == SKIP
      @reference = reference unless reference == SKIP
      @address = address unless address == SKIP
      @address_2 = address_2 unless address_2 == SKIP
      @city = city unless city == SKIP
      @state = state unless state == SKIP
      @zip = zip unless zip == SKIP
      @country = country unless country == SKIP
      @phone = phone unless phone == SKIP
      @locale = locale unless locale == SKIP
      @vat_number = vat_number unless vat_number == SKIP
      @tax_exempt = tax_exempt unless tax_exempt == SKIP
      @tax_exempt_reason = tax_exempt_reason unless tax_exempt_reason == SKIP
      @parent_id = parent_id unless parent_id == SKIP
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
      address = hash.key?('address') ? hash['address'] : SKIP
      address_2 = hash.key?('address_2') ? hash['address_2'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP
      zip = hash.key?('zip') ? hash['zip'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP
      phone = hash.key?('phone') ? hash['phone'] : SKIP
      locale = hash.key?('locale') ? hash['locale'] : SKIP
      vat_number = hash.key?('vat_number') ? hash['vat_number'] : SKIP
      tax_exempt = hash.key?('tax_exempt') ? hash['tax_exempt'] : SKIP
      tax_exempt_reason =
        hash.key?('tax_exempt_reason') ? hash['tax_exempt_reason'] : SKIP
      parent_id = hash.key?('parent_id') ? hash['parent_id'] : SKIP

      # Create object from extracted values.
      UpdateCustomer.new(first_name,
                         last_name,
                         email,
                         cc_emails,
                         organization,
                         reference,
                         address,
                         address_2,
                         city,
                         state,
                         zip,
                         country,
                         phone,
                         locale,
                         vat_number,
                         tax_exempt,
                         tax_exempt_reason,
                         parent_id)
    end
  end
end
