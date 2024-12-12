# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PrepaymentAccountBalanceChanged Model.
  class PrepaymentAccountBalanceChanged < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :reason

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :prepayment_account_balance_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :prepayment_balance_change_in_cents

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['reason'] = 'reason'
      @_hash['prepayment_account_balance_in_cents'] =
        'prepayment_account_balance_in_cents'
      @_hash['prepayment_balance_change_in_cents'] =
        'prepayment_balance_change_in_cents'
      @_hash['currency_code'] = 'currency_code'
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

    def initialize(reason:, prepayment_account_balance_in_cents:,
                   prepayment_balance_change_in_cents:, currency_code:,
                   additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @reason = reason
      @prepayment_account_balance_in_cents = prepayment_account_balance_in_cents
      @prepayment_balance_change_in_cents = prepayment_balance_change_in_cents
      @currency_code = currency_code
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      reason = hash.key?('reason') ? hash['reason'] : nil
      prepayment_account_balance_in_cents =
        hash.key?('prepayment_account_balance_in_cents') ? hash['prepayment_account_balance_in_cents'] : nil
      prepayment_balance_change_in_cents =
        hash.key?('prepayment_balance_change_in_cents') ? hash['prepayment_balance_change_in_cents'] : nil
      currency_code = hash.key?('currency_code') ? hash['currency_code'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PrepaymentAccountBalanceChanged.new(reason: reason,
                                          prepayment_account_balance_in_cents: prepayment_account_balance_in_cents,
                                          prepayment_balance_change_in_cents: prepayment_balance_change_in_cents,
                                          currency_code: currency_code,
                                          additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [PrepaymentAccountBalanceChanged | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.reason,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.prepayment_account_balance_in_cents,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.prepayment_balance_change_in_cents,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.currency_code,
                                  ->(val) { val.instance_of? String })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['reason'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['prepayment_account_balance_in_cents'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['prepayment_balance_change_in_cents'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['currency_code'],
                                ->(val) { val.instance_of? String })
      )
    end
  end
end
