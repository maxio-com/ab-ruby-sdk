# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoicePayerChange Model.
  class InvoicePayerChange < BaseModel
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
    attr_accessor :organization

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['organization'] = 'organization'
      @_hash['email'] = 'email'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        first_name
        last_name
        organization
        email
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(first_name: SKIP, last_name: SKIP, organization: SKIP,
                   email: SKIP, additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @organization = organization unless organization == SKIP
      @email = email unless email == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      first_name = hash.key?('first_name') ? hash['first_name'] : SKIP
      last_name = hash.key?('last_name') ? hash['last_name'] : SKIP
      organization = hash.key?('organization') ? hash['organization'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoicePayerChange.new(first_name: first_name,
                             last_name: last_name,
                             organization: organization,
                             email: email,
                             additional_properties: additional_properties)
    end
  end
end
