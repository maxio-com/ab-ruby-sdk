# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # RefundSuccess Model.
  class RefundSuccess < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :refund_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :gateway_transaction_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :product_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['refund_id'] = 'refund_id'
      @_hash['gateway_transaction_id'] = 'gateway_transaction_id'
      @_hash['product_id'] = 'product_id'
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

    def initialize(refund_id:, gateway_transaction_id:, product_id:,
                   additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @refund_id = refund_id
      @gateway_transaction_id = gateway_transaction_id
      @product_id = product_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      refund_id = hash.key?('refund_id') ? hash['refund_id'] : nil
      gateway_transaction_id =
        hash.key?('gateway_transaction_id') ? hash['gateway_transaction_id'] : nil
      product_id = hash.key?('product_id') ? hash['product_id'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      RefundSuccess.new(refund_id: refund_id,
                        gateway_transaction_id: gateway_transaction_id,
                        product_id: product_id,
                        additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [RefundSuccess | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.refund_id,
                                ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.gateway_transaction_id,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.product_id,
                                  ->(val) { val.instance_of? Integer })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['refund_id'],
                              ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['gateway_transaction_id'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['product_id'],
                                ->(val) { val.instance_of? Integer })
      )
    end
  end
end
