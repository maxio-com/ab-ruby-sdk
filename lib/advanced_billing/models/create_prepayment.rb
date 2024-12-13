# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreatePrepayment Model.
  class CreatePrepayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :details

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # :- When the `method` specified is `"credit_card_on_file"`, the prepayment
    # amount will be collected using the default credit card payment profile and
    # applied to the prepayment account balance. This is especially useful for
    # manual replenishment of prepaid subscriptions.
    # @return [CreatePrepaymentMethod]
    attr_accessor :method

    # :- When the `method` specified is `"credit_card_on_file"`, the prepayment
    # amount will be collected using the default credit card payment profile and
    # applied to the prepayment account balance. This is especially useful for
    # manual replenishment of prepaid subscriptions.
    # @return [Integer]
    attr_accessor :payment_profile_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['details'] = 'details'
      @_hash['memo'] = 'memo'
      @_hash['method'] = 'method'
      @_hash['payment_profile_id'] = 'payment_profile_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        payment_profile_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount:, details:, memo:, method:, payment_profile_id: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @amount = amount
      @details = details
      @memo = memo
      @method = method
      @payment_profile_id = payment_profile_id unless payment_profile_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : nil
      details = hash.key?('details') ? hash['details'] : nil
      memo = hash.key?('memo') ? hash['memo'] : nil
      method = hash.key?('method') ? hash['method'] : nil
      payment_profile_id =
        hash.key?('payment_profile_id') ? hash['payment_profile_id'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreatePrepayment.new(amount: amount,
                           details: details,
                           memo: memo,
                           method: method,
                           payment_profile_id: payment_profile_id,
                           additional_properties: additional_properties)
    end
  end
end
