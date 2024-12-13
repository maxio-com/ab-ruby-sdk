# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateMultiInvoicePayment Model.
  class CreateMultiInvoicePayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A description to be attached to the payment.
    # @return [String]
    attr_accessor :memo

    # Additional information related to the payment method (eg. Check #).
    # @return [String]
    attr_accessor :details

    # The type of payment method used. Defaults to other.
    # @return [InvoicePaymentMethodType]
    attr_accessor :method

    # Dollar amount of the sum of the invoices payment (eg. "10.50" => $10.50).
    # @return [Object]
    attr_accessor :amount

    # Date reflecting when the payment was received from a customer. Must be in
    # the past.
    # @return [String]
    attr_accessor :received_on

    # Date reflecting when the payment was received from a customer. Must be in
    # the past.
    # @return [Array[CreateInvoicePaymentApplication]]
    attr_accessor :applications

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['memo'] = 'memo'
      @_hash['details'] = 'details'
      @_hash['method'] = 'method'
      @_hash['amount'] = 'amount'
      @_hash['received_on'] = 'received_on'
      @_hash['applications'] = 'applications'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        memo
        details
        method
        received_on
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount:, applications:, memo: SKIP, details: SKIP,
                   method: SKIP, received_on: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @memo = memo unless memo == SKIP
      @details = details unless details == SKIP
      @method = method unless method == SKIP
      @amount = amount
      @received_on = received_on unless received_on == SKIP
      @applications = applications
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateMultiInvoicePaymentAmount), hash['amount']
      ) : nil
      # Parameter is an array, so we need to iterate through it
      applications = nil
      unless hash['applications'].nil?
        applications = []
        hash['applications'].each do |structure|
          applications << (CreateInvoicePaymentApplication.from_hash(structure) if structure)
        end
      end

      applications = nil unless hash.key?('applications')
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      details = hash.key?('details') ? hash['details'] : SKIP
      method = hash.key?('method') ? hash['method'] : SKIP
      received_on = hash.key?('received_on') ? hash['received_on'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateMultiInvoicePayment.new(amount: amount,
                                    applications: applications,
                                    memo: memo,
                                    details: details,
                                    method: method,
                                    received_on: received_on,
                                    additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateMultiInvoicePayment | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          UnionTypeLookUp.get(:CreateMultiInvoicePaymentAmount)
                         .validate(value.amount) and
            APIHelper.valid_type?(value.applications,
                                  ->(val) { CreateInvoicePaymentApplication.validate(val) },
                                  is_model_hash: true,
                                  is_inner_model_hash: true)
        )
      end

      return false unless value.instance_of? Hash

      (
        UnionTypeLookUp.get(:CreateMultiInvoicePaymentAmount)
                       .validate(value['amount']) and
          APIHelper.valid_type?(value['applications'],
                                ->(val) { CreateInvoicePaymentApplication.validate(val) },
                                is_model_hash: true,
                                is_inner_model_hash: true)
      )
    end
  end
end
