# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateInvoicePayment Model.
  class CreateInvoicePayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A string of the dollar amount to be refunded (eg. "10.50" => $10.50)
    # @return [Object]
    attr_accessor :amount

    # A description to be attached to the payment. Applicable only to `external`
    # payments.
    # @return [String]
    attr_accessor :memo

    # The type of payment method used. Defaults to other.
    # @return [InvoicePaymentMethodType]
    attr_accessor :method

    # Additional information related to the payment method (eg. Check #).
    # Applicable only to `external` payments.
    # @return [String]
    attr_accessor :details

    # The ID of the payment profile to be used for the payment.
    # @return [Integer]
    attr_accessor :payment_profile_id

    # Date reflecting when the payment was received from a customer. Must be in
    # the past. Applicable only to 
    # `external` payments.
    # @return [Date]
    attr_accessor :received_on

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['memo'] = 'memo'
      @_hash['method'] = 'method'
      @_hash['details'] = 'details'
      @_hash['payment_profile_id'] = 'payment_profile_id'
      @_hash['received_on'] = 'received_on'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount
        memo
        method
        details
        payment_profile_id
        received_on
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount: SKIP, memo: SKIP, method: SKIP, details: SKIP,
                   payment_profile_id: SKIP, received_on: SKIP,
                   additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @amount = amount unless amount == SKIP
      @memo = memo unless memo == SKIP
      @method = method unless method == SKIP
      @details = details unless details == SKIP
      @payment_profile_id = payment_profile_id unless payment_profile_id == SKIP
      @received_on = received_on unless received_on == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateInvoicePaymentAmount), hash['amount']
      ) : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      method = hash.key?('method') ? hash['method'] : SKIP
      details = hash.key?('details') ? hash['details'] : SKIP
      payment_profile_id =
        hash.key?('payment_profile_id') ? hash['payment_profile_id'] : SKIP
      received_on = hash.key?('received_on') ? hash['received_on'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateInvoicePayment.new(amount: amount,
                               memo: memo,
                               method: method,
                               details: details,
                               payment_profile_id: payment_profile_id,
                               received_on: received_on,
                               additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateInvoicePayment | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
