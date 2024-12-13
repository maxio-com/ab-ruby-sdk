# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreditCardAttributes Model.
  class CreditCardAttributes < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :full_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :expiration_month

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :expiration_year

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['full_number'] = 'full_number'
      @_hash['expiration_month'] = 'expiration_month'
      @_hash['expiration_year'] = 'expiration_year'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        full_number
        expiration_month
        expiration_year
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(full_number: SKIP, expiration_month: SKIP,
                   expiration_year: SKIP, additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @full_number = full_number unless full_number == SKIP
      @expiration_month = expiration_month unless expiration_month == SKIP
      @expiration_year = expiration_year unless expiration_year == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      full_number = hash.key?('full_number') ? hash['full_number'] : SKIP
      expiration_month =
        hash.key?('expiration_month') ? hash['expiration_month'] : SKIP
      expiration_year =
        hash.key?('expiration_year') ? hash['expiration_year'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreditCardAttributes.new(full_number: full_number,
                               expiration_month: expiration_month,
                               expiration_year: expiration_year,
                               additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CreditCardAttributes | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
