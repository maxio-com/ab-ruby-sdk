# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # SendInvoiceRequest Model.
  class SendInvoiceRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :recipient_emails

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :cc_recipient_emails

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :bcc_recipient_emails

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['recipient_emails'] = 'recipient_emails'
      @_hash['cc_recipient_emails'] = 'cc_recipient_emails'
      @_hash['bcc_recipient_emails'] = 'bcc_recipient_emails'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        recipient_emails
        cc_recipient_emails
        bcc_recipient_emails
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(recipient_emails = SKIP,
                   cc_recipient_emails = SKIP,
                   bcc_recipient_emails = SKIP)
      @recipient_emails = recipient_emails unless recipient_emails == SKIP
      @cc_recipient_emails = cc_recipient_emails unless cc_recipient_emails == SKIP
      @bcc_recipient_emails = bcc_recipient_emails unless bcc_recipient_emails == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      recipient_emails =
        hash.key?('recipient_emails') ? hash['recipient_emails'] : SKIP
      cc_recipient_emails =
        hash.key?('cc_recipient_emails') ? hash['cc_recipient_emails'] : SKIP
      bcc_recipient_emails =
        hash.key?('bcc_recipient_emails') ? hash['bcc_recipient_emails'] : SKIP

      # Create object from extracted values.
      SendInvoiceRequest.new(recipient_emails,
                             cc_recipient_emails,
                             bcc_recipient_emails)
    end
  end
end
