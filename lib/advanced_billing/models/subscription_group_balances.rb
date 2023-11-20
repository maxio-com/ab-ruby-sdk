# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionGroupBalances Model.
  class SubscriptionGroupBalances < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [AccountBalance]
    attr_accessor :prepayments

    # TODO: Write general description for this method
    # @return [AccountBalance]
    attr_accessor :service_credits

    # TODO: Write general description for this method
    # @return [AccountBalance]
    attr_accessor :open_invoices

    # TODO: Write general description for this method
    # @return [AccountBalance]
    attr_accessor :pending_discounts

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['prepayments'] = 'prepayments'
      @_hash['service_credits'] = 'service_credits'
      @_hash['open_invoices'] = 'open_invoices'
      @_hash['pending_discounts'] = 'pending_discounts'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        prepayments
        service_credits
        open_invoices
        pending_discounts
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(prepayments = SKIP,
                   service_credits = SKIP,
                   open_invoices = SKIP,
                   pending_discounts = SKIP)
      @prepayments = prepayments unless prepayments == SKIP
      @service_credits = service_credits unless service_credits == SKIP
      @open_invoices = open_invoices unless open_invoices == SKIP
      @pending_discounts = pending_discounts unless pending_discounts == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      prepayments = AccountBalance.from_hash(hash['prepayments']) if hash['prepayments']
      service_credits = AccountBalance.from_hash(hash['service_credits']) if
        hash['service_credits']
      open_invoices = AccountBalance.from_hash(hash['open_invoices']) if hash['open_invoices']
      pending_discounts = AccountBalance.from_hash(hash['pending_discounts']) if
        hash['pending_discounts']

      # Create object from extracted values.
      SubscriptionGroupBalances.new(prepayments,
                                    service_credits,
                                    open_invoices,
                                    pending_discounts)
    end
  end
end
