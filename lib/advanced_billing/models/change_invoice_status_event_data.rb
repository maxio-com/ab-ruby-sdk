# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Example schema for an `change_invoice_status` event
  class ChangeInvoiceStatusEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Identifier for the transaction within the payment gateway.
    # @return [String]
    attr_accessor :gateway_trans_id

    # The monetary value associated with the linked payment, expressed in
    # dollars.
    # @return [String]
    attr_accessor :amount

    # The status of the invoice before any changes occurred. See [Invoice
    # Statuses](https://maxio.zendesk.com/hc/en-us/articles/24252287829645-Advan
    # ced-Billing-Invoices-Overview#invoice-statuses) for more.
    # @return [InvoiceStatus]
    attr_accessor :from_status

    # The updated status of the invoice after changes have been made. See
    # [Invoice
    # Statuses](https://maxio.zendesk.com/hc/en-us/articles/24252287829645-Advan
    # ced-Billing-Invoices-Overview#invoice-statuses) for more.
    # @return [InvoiceStatus]
    attr_accessor :to_status

    # The updated status of the invoice after changes have been made. See
    # [Invoice
    # Statuses](https://maxio.zendesk.com/hc/en-us/articles/24252287829645-Advan
    # ced-Billing-Invoices-Overview#invoice-statuses) for more.
    # @return [InvoiceConsolidationLevel]
    attr_accessor :consolidation_level

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['gateway_trans_id'] = 'gateway_trans_id'
      @_hash['amount'] = 'amount'
      @_hash['from_status'] = 'from_status'
      @_hash['to_status'] = 'to_status'
      @_hash['consolidation_level'] = 'consolidation_level'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        gateway_trans_id
        amount
        consolidation_level
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(from_status:, to_status:, gateway_trans_id: SKIP,
                   amount: SKIP, consolidation_level: SKIP,
                   additional_properties: {})
      @gateway_trans_id = gateway_trans_id unless gateway_trans_id == SKIP
      @amount = amount unless amount == SKIP
      @from_status = from_status
      @to_status = to_status
      @consolidation_level = consolidation_level unless consolidation_level == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      from_status = hash.key?('from_status') ? hash['from_status'] : nil
      to_status = hash.key?('to_status') ? hash['to_status'] : nil
      gateway_trans_id =
        hash.key?('gateway_trans_id') ? hash['gateway_trans_id'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      consolidation_level =
        hash.key?('consolidation_level') ? hash['consolidation_level'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ChangeInvoiceStatusEventData.new(from_status: from_status,
                                       to_status: to_status,
                                       gateway_trans_id: gateway_trans_id,
                                       amount: amount,
                                       consolidation_level: consolidation_level,
                                       additional_properties: hash)
    end

    # Validates an instance of the object from a given value.
    # @param [ChangeInvoiceStatusEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.from_status,
                                ->(val) { InvoiceStatus.validate(val) }) and
            APIHelper.valid_type?(value.to_status,
                                  ->(val) { InvoiceStatus.validate(val) })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['from_status'],
                              ->(val) { InvoiceStatus.validate(val) }) and
          APIHelper.valid_type?(value['to_status'],
                                ->(val) { InvoiceStatus.validate(val) })
      )
    end
  end
end
