# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # IssueInvoiceRequest Model.
  class IssueInvoiceRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Action taken when payment for an invoice fails:
    # - `leave_open_invoice` - prepayments and credits applied to invoice;
    # invoice status set to "open"; email sent to the customer for the issued
    # invoice (if setting applies); payment failure recorded in the invoice
    # history. This is the default option.
    # - `rollback_to_pending` - prepayments and credits not applied; invoice
    # remains in "pending" status; no email sent to the customer; payment
    # failure recorded in the invoice history.
    # - `initiate_dunning` - prepayments and credits applied to the invoice;
    # invoice status set to "open"; email sent to the customer for the issued
    # invoice (if setting applies); payment failure recorded in the invoice
    # history; subscription will  most likely go into "past_due" or "canceled"
    # state (depending upon net terms and dunning settings).
    # @return [FailedPaymentAction]
    attr_accessor :on_failed_payment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['on_failed_payment'] = 'on_failed_payment'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        on_failed_payment
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(on_failed_payment: FailedPaymentAction::LEAVE_OPEN_INVOICE,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @on_failed_payment = on_failed_payment unless on_failed_payment == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      on_failed_payment =
        hash['on_failed_payment'] ||= FailedPaymentAction::LEAVE_OPEN_INVOICE

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      IssueInvoiceRequest.new(on_failed_payment: on_failed_payment,
                              additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} on_failed_payment: #{@on_failed_payment}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} on_failed_payment: #{@on_failed_payment.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
