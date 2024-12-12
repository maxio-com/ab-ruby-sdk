# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceTaxBreakout Model.
  class InvoiceTaxBreakout < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :taxable_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tax_exempt_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['taxable_amount'] = 'taxable_amount'
      @_hash['tax_amount'] = 'tax_amount'
      @_hash['tax_exempt_amount'] = 'tax_exempt_amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        taxable_amount
        tax_amount
        tax_exempt_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid: SKIP, taxable_amount: SKIP, tax_amount: SKIP,
                   tax_exempt_amount: SKIP, additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @uid = uid unless uid == SKIP
      @taxable_amount = taxable_amount unless taxable_amount == SKIP
      @tax_amount = tax_amount unless tax_amount == SKIP
      @tax_exempt_amount = tax_exempt_amount unless tax_exempt_amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      taxable_amount =
        hash.key?('taxable_amount') ? hash['taxable_amount'] : SKIP
      tax_amount = hash.key?('tax_amount') ? hash['tax_amount'] : SKIP
      tax_exempt_amount =
        hash.key?('tax_exempt_amount') ? hash['tax_exempt_amount'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoiceTaxBreakout.new(uid: uid,
                             taxable_amount: taxable_amount,
                             tax_amount: tax_amount,
                             tax_exempt_amount: tax_exempt_amount,
                             additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceTaxBreakout | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
