# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceDiscountBreakout Model.
  class InvoiceDiscountBreakout < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :uid

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :eligible_amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :discount_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['eligible_amount'] = 'eligible_amount'
      @_hash['discount_amount'] = 'discount_amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        eligible_amount
        discount_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid: SKIP, eligible_amount: SKIP, discount_amount: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @uid = uid unless uid == SKIP
      @eligible_amount = eligible_amount unless eligible_amount == SKIP
      @discount_amount = discount_amount unless discount_amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      eligible_amount =
        hash.key?('eligible_amount') ? hash['eligible_amount'] : SKIP
      discount_amount =
        hash.key?('discount_amount') ? hash['discount_amount'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoiceDiscountBreakout.new(uid: uid,
                                  eligible_amount: eligible_amount,
                                  discount_amount: discount_amount,
                                  additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceDiscountBreakout | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
