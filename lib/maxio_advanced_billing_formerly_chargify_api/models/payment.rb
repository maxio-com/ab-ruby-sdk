# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # Payment Model.
  class Payment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The uid of the paid invoice
    # @return [String]
    attr_accessor :invoice_uid

    # The current status of the invoice. See [Invoice
    # Statuses](https://chargify.zendesk.com/hc/en-us/articles/4407737494171#lin
    # e-item-breakdowns) for more.
    # @return [StatusEnum]
    attr_accessor :status

    # The remaining due amount on the invoice
    # @return [String]
    attr_accessor :due_amount

    # The total amount paid on this invoice (including any prior payments)
    # @return [String]
    attr_accessor :paid_amount

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['invoice_uid'] = 'invoice_uid'
      @_hash['status'] = 'status'
      @_hash['due_amount'] = 'due_amount'
      @_hash['paid_amount'] = 'paid_amount'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        invoice_uid
        status
        due_amount
        paid_amount
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(invoice_uid = SKIP,
                   status = SKIP,
                   due_amount = SKIP,
                   paid_amount = SKIP)
      @invoice_uid = invoice_uid unless invoice_uid == SKIP
      @status = status unless status == SKIP
      @due_amount = due_amount unless due_amount == SKIP
      @paid_amount = paid_amount unless paid_amount == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      invoice_uid = hash.key?('invoice_uid') ? hash['invoice_uid'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      due_amount = hash.key?('due_amount') ? hash['due_amount'] : SKIP
      paid_amount = hash.key?('paid_amount') ? hash['paid_amount'] : SKIP

      # Create object from extracted values.
      Payment.new(invoice_uid,
                  status,
                  due_amount,
                  paid_amount)
    end
  end
end
