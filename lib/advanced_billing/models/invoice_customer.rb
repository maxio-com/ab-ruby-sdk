# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Information about the customer who is owner or recipient the invoiced
  # subscription.
  class InvoiceCustomer < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :chargify_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :first_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :organization

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :vat_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :reference

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['chargify_id'] = 'chargify_id'
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['organization'] = 'organization'
      @_hash['email'] = 'email'
      @_hash['vat_number'] = 'vat_number'
      @_hash['reference'] = 'reference'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        chargify_id
        first_name
        last_name
        organization
        email
        vat_number
        reference
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        chargify_id
        organization
        vat_number
        reference
      ]
    end

    def initialize(chargify_id = SKIP,
                   first_name = SKIP,
                   last_name = SKIP,
                   organization = SKIP,
                   email = SKIP,
                   vat_number = SKIP,
                   reference = SKIP,
                   additional_properties = {})
      @chargify_id = chargify_id unless chargify_id == SKIP
      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @organization = organization unless organization == SKIP
      @email = email unless email == SKIP
      @vat_number = vat_number unless vat_number == SKIP
      @reference = reference unless reference == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      chargify_id = hash.key?('chargify_id') ? hash['chargify_id'] : SKIP
      first_name = hash.key?('first_name') ? hash['first_name'] : SKIP
      last_name = hash.key?('last_name') ? hash['last_name'] : SKIP
      organization = hash.key?('organization') ? hash['organization'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      vat_number = hash.key?('vat_number') ? hash['vat_number'] : SKIP
      reference = hash.key?('reference') ? hash['reference'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      InvoiceCustomer.new(chargify_id,
                          first_name,
                          last_name,
                          organization,
                          email,
                          vat_number,
                          reference,
                          hash)
    end
  end
end
