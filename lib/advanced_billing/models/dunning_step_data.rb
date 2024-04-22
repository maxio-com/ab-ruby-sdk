# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # DunningStepData Model.
  class DunningStepData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :day_threshold

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :action

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email_body

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email_subject

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :send_email

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :send_bcc_email

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :send_sms

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :sms_body

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['day_threshold'] = 'day_threshold'
      @_hash['action'] = 'action'
      @_hash['email_body'] = 'email_body'
      @_hash['email_subject'] = 'email_subject'
      @_hash['send_email'] = 'send_email'
      @_hash['send_bcc_email'] = 'send_bcc_email'
      @_hash['send_sms'] = 'send_sms'
      @_hash['sms_body'] = 'sms_body'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        email_body
        email_subject
        sms_body
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        email_body
        email_subject
        sms_body
      ]
    end

    def initialize(day_threshold = nil,
                   action = nil,
                   send_email = nil,
                   send_bcc_email = nil,
                   send_sms = nil,
                   email_body = SKIP,
                   email_subject = SKIP,
                   sms_body = SKIP,
                   additional_properties = {})
      @day_threshold = day_threshold
      @action = action
      @email_body = email_body unless email_body == SKIP
      @email_subject = email_subject unless email_subject == SKIP
      @send_email = send_email
      @send_bcc_email = send_bcc_email
      @send_sms = send_sms
      @sms_body = sms_body unless sms_body == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      day_threshold = hash.key?('day_threshold') ? hash['day_threshold'] : nil
      action = hash.key?('action') ? hash['action'] : nil
      send_email = hash.key?('send_email') ? hash['send_email'] : nil
      send_bcc_email =
        hash.key?('send_bcc_email') ? hash['send_bcc_email'] : nil
      send_sms = hash.key?('send_sms') ? hash['send_sms'] : nil
      email_body = hash.key?('email_body') ? hash['email_body'] : SKIP
      email_subject = hash.key?('email_subject') ? hash['email_subject'] : SKIP
      sms_body = hash.key?('sms_body') ? hash['sms_body'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      DunningStepData.new(day_threshold,
                          action,
                          send_email,
                          send_bcc_email,
                          send_sms,
                          email_body,
                          email_subject,
                          sms_body,
                          hash)
    end

    # Validates an instance of the object from a given value.
    # @param [DunningStepData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.day_threshold,
                                ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.action,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.send_email,
                                  ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass }) and
            APIHelper.valid_type?(value.send_bcc_email,
                                  ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass }) and
            APIHelper.valid_type?(value.send_sms,
                                  ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['day_threshold'],
                              ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['action'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['send_email'],
                                ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass }) and
          APIHelper.valid_type?(value['send_bcc_email'],
                                ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass }) and
          APIHelper.valid_type?(value['send_sms'],
                                ->(val) { val.instance_of? TrueClass or val.instance_of? FalseClass })
      )
    end
  end
end
