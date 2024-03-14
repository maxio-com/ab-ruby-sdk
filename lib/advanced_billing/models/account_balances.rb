# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # AccountBalances Model.
  class AccountBalances < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The balance, in cents, of the sum of the subscription's  open, payable
    # invoices.
    # @return [AccountBalance]
    attr_accessor :open_invoices

    # The balance, in cents, of the sum of the subscription's  pending, payable
    # invoices.
    # @return [AccountBalance]
    attr_accessor :pending_invoices

    # The balance, in cents, of the subscription's Pending Discount account.
    # @return [AccountBalance]
    attr_accessor :pending_discounts

    # The balance, in cents, of the subscription's Service Credit account.
    # @return [AccountBalance]
    attr_accessor :service_credits

    # The balance, in cents, of the subscription's Prepayment account.
    # @return [AccountBalance]
    attr_accessor :prepayments

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['open_invoices'] = 'open_invoices'
      @_hash['pending_invoices'] = 'pending_invoices'
      @_hash['pending_discounts'] = 'pending_discounts'
      @_hash['service_credits'] = 'service_credits'
      @_hash['prepayments'] = 'prepayments'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        open_invoices
        pending_invoices
        pending_discounts
        service_credits
        prepayments
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(open_invoices = SKIP,
                   pending_invoices = SKIP,
                   pending_discounts = SKIP,
                   service_credits = SKIP,
                   prepayments = SKIP,
                   additional_properties = {})
      @open_invoices = open_invoices unless open_invoices == SKIP
      @pending_invoices = pending_invoices unless pending_invoices == SKIP
      @pending_discounts = pending_discounts unless pending_discounts == SKIP
      @service_credits = service_credits unless service_credits == SKIP
      @prepayments = prepayments unless prepayments == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      open_invoices = AccountBalance.from_hash(hash['open_invoices']) if hash['open_invoices']
      pending_invoices = AccountBalance.from_hash(hash['pending_invoices']) if
        hash['pending_invoices']
      pending_discounts = AccountBalance.from_hash(hash['pending_discounts']) if
        hash['pending_discounts']
      service_credits = AccountBalance.from_hash(hash['service_credits']) if
        hash['service_credits']
      prepayments = AccountBalance.from_hash(hash['prepayments']) if hash['prepayments']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      AccountBalances.new(open_invoices,
                          pending_invoices,
                          pending_discounts,
                          service_credits,
                          prepayments,
                          hash)
    end
  end
end
