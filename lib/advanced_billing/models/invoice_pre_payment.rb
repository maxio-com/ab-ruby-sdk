# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoicePrePayment Model.
  class InvoicePrePayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The subscription id for the prepayment account
    # @return [Integer]
    attr_accessor :subscription_id

    # The amount in cents of the prepayment that was created as a result of this
    # payment.
    # @return [Integer]
    attr_accessor :amount_in_cents

    # The total balance of the prepayment account for this subscription
    # including any prior prepayments
    # @return [Integer]
    attr_accessor :ending_balance_in_cents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['ending_balance_in_cents'] = 'ending_balance_in_cents'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        subscription_id
        amount_in_cents
        ending_balance_in_cents
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(subscription_id: SKIP, amount_in_cents: SKIP,
                   ending_balance_in_cents: SKIP, additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @subscription_id = subscription_id unless subscription_id == SKIP
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
      @ending_balance_in_cents = ending_balance_in_cents unless ending_balance_in_cents == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : SKIP
      ending_balance_in_cents =
        hash.key?('ending_balance_in_cents') ? hash['ending_balance_in_cents'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoicePrePayment.new(subscription_id: subscription_id,
                            amount_in_cents: amount_in_cents,
                            ending_balance_in_cents: ending_balance_in_cents,
                            additional_properties: additional_properties)
    end
  end
end
