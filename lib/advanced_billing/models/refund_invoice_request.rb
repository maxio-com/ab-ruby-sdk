# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # RefundInvoiceRequest Model.
  class RefundInvoiceRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :refund

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['refund'] = 'refund'
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

    def initialize(refund:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @refund = refund
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      refund = hash.key?('refund') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:RefundInvoiceRequestRefund), hash['refund']
      ) : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      RefundInvoiceRequest.new(refund: refund,
                               additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [RefundInvoiceRequest | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return UnionTypeLookUp.get(:RefundInvoiceRequestRefund)
                              .validate(value.refund)
      end

      return false unless value.instance_of? Hash

      UnionTypeLookUp.get(:RefundInvoiceRequestRefund)
                     .validate(value['refund'])
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} refund: #{@refund}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} refund: #{@refund.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
