# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
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

    def initialize(recipient_emails: SKIP, cc_recipient_emails: SKIP,
                   bcc_recipient_emails: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

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

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SendInvoiceRequest.new(recipient_emails: recipient_emails,
                             cc_recipient_emails: cc_recipient_emails,
                             bcc_recipient_emails: bcc_recipient_emails,
                             additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} recipient_emails: #{@recipient_emails}, cc_recipient_emails:"\
      " #{@cc_recipient_emails}, bcc_recipient_emails: #{@bcc_recipient_emails},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} recipient_emails: #{@recipient_emails.inspect}, cc_recipient_emails:"\
      " #{@cc_recipient_emails.inspect}, bcc_recipient_emails: #{@bcc_recipient_emails.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
