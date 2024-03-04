# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # CreditAccountBalanceChanged Model.
  class CreditAccountBalanceChanged < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :reason

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :service_credit_account_balance_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :service_credit_balance_change_in_cents

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency_code

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :at_time

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['reason'] = 'reason'
      @_hash['service_credit_account_balance_in_cents'] =
        'service_credit_account_balance_in_cents'
      @_hash['service_credit_balance_change_in_cents'] =
        'service_credit_balance_change_in_cents'
      @_hash['currency_code'] = 'currency_code'
      @_hash['at_time'] = 'at_time'
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

    def initialize(reason = nil,
                   service_credit_account_balance_in_cents = nil,
                   service_credit_balance_change_in_cents = nil,
                   currency_code = nil,
                   at_time = nil,
                   additional_properties = {})
      @reason = reason
      @service_credit_account_balance_in_cents = service_credit_account_balance_in_cents
      @service_credit_balance_change_in_cents = service_credit_balance_change_in_cents
      @currency_code = currency_code
      @at_time = at_time

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      reason = hash.key?('reason') ? hash['reason'] : nil
      service_credit_account_balance_in_cents =
        hash.key?('service_credit_account_balance_in_cents') ? hash['service_credit_account_balance_in_cents'] : nil
      service_credit_balance_change_in_cents =
        hash.key?('service_credit_balance_change_in_cents') ? hash['service_credit_balance_change_in_cents'] : nil
      currency_code = hash.key?('currency_code') ? hash['currency_code'] : nil
      at_time = if hash.key?('at_time')
                  (DateTimeHelper.from_rfc3339(hash['at_time']) if hash['at_time'])
                end

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      CreditAccountBalanceChanged.new(reason,
                                      service_credit_account_balance_in_cents,
                                      service_credit_balance_change_in_cents,
                                      currency_code,
                                      at_time,
                                      hash)
    end

    def to_custom_at_time
      DateTimeHelper.to_rfc3339(at_time)
    end

    # Validates an instance of the object from a given value.
    # @param [CreditAccountBalanceChanged | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.reason,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.service_credit_account_balance_in_cents,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.service_credit_balance_change_in_cents,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.currency_code,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.at_time,
                                  ->(val) { val.instance_of? DateTime })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['reason'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['service_credit_account_balance_in_cents'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['service_credit_balance_change_in_cents'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['currency_code'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['at_time'],
                                ->(val) { val.instance_of? String })
      )
    end
  end
end
