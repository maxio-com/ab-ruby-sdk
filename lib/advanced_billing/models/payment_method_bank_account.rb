# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PaymentMethodBankAccount Model.
  class PaymentMethodBankAccount < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :masked_account_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :masked_routing_number

    # TODO: Write general description for this method
    # @return [InvoiceEventPaymentMethod]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['masked_account_number'] = 'masked_account_number'
      @_hash['masked_routing_number'] = 'masked_routing_number'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(masked_account_number:, masked_routing_number:, type:,
                   additional_properties: {})
      @masked_account_number = masked_account_number
      @masked_routing_number = masked_routing_number
      @type = type

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      masked_account_number =
        hash.key?('masked_account_number') ? hash['masked_account_number'] : nil
      masked_routing_number =
        hash.key?('masked_routing_number') ? hash['masked_routing_number'] : nil
      type = hash.key?('type') ? hash['type'] : nil

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      PaymentMethodBankAccount.new(masked_account_number: masked_account_number,
                                   masked_routing_number: masked_routing_number,
                                   type: type,
                                   additional_properties: hash)
    end

    # Validates an instance of the object from a given value.
    # @param [PaymentMethodBankAccount | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.masked_account_number,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.masked_routing_number,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.type,
                                  ->(val) { InvoiceEventPaymentMethod.validate(val) })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['masked_account_number'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['masked_routing_number'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['type'],
                                ->(val) { InvoiceEventPaymentMethod.validate(val) })
      )
    end
  end
end
