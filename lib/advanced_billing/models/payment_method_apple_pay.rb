# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PaymentMethodApplePay Model.
  class PaymentMethodApplePay < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [InvoiceEventPaymentMethod]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
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

    def initialize(type:, additional_properties: {})
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
      type = hash.key?('type') ? hash['type'] : nil

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      PaymentMethodApplePay.new(type: type,
                                additional_properties: hash)
    end

    # Validates an instance of the object from a given value.
    # @param [PaymentMethodApplePay | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.type,
                                     ->(val) { InvoiceEventPaymentMethod.validate(val) })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['type'],
                            ->(val) { InvoiceEventPaymentMethod.validate(val) })
    end
  end
end
