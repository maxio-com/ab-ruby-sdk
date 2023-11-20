# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CouponUsage Model.
  class CouponUsage < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Chargify id of the product
    # @return [Integer]
    attr_accessor :id

    # Name of the product
    # @return [String]
    attr_accessor :name

    # Number of times the coupon has been applied
    # @return [Integer]
    attr_accessor :signups

    # Dollar amount of customer savings as a result of the coupon.
    # @return [Integer]
    attr_accessor :savings

    # Dollar amount of customer savings as a result of the coupon.
    # @return [Integer]
    attr_accessor :savings_in_cents

    # Total revenue of the all subscriptions that have received a discount from
    # this coupon.
    # @return [Integer]
    attr_accessor :revenue

    # Total revenue of the all subscriptions that have received a discount from
    # this coupon.
    # @return [Integer]
    attr_accessor :revenue_in_cents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['signups'] = 'signups'
      @_hash['savings'] = 'savings'
      @_hash['savings_in_cents'] = 'savings_in_cents'
      @_hash['revenue'] = 'revenue'
      @_hash['revenue_in_cents'] = 'revenue_in_cents'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        signups
        savings
        savings_in_cents
        revenue
        revenue_in_cents
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        savings
        savings_in_cents
        revenue
      ]
    end

    def initialize(id = SKIP,
                   name = SKIP,
                   signups = SKIP,
                   savings = SKIP,
                   savings_in_cents = SKIP,
                   revenue = SKIP,
                   revenue_in_cents = SKIP)
      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @signups = signups unless signups == SKIP
      @savings = savings unless savings == SKIP
      @savings_in_cents = savings_in_cents unless savings_in_cents == SKIP
      @revenue = revenue unless revenue == SKIP
      @revenue_in_cents = revenue_in_cents unless revenue_in_cents == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      signups = hash.key?('signups') ? hash['signups'] : SKIP
      savings = hash.key?('savings') ? hash['savings'] : SKIP
      savings_in_cents =
        hash.key?('savings_in_cents') ? hash['savings_in_cents'] : SKIP
      revenue = hash.key?('revenue') ? hash['revenue'] : SKIP
      revenue_in_cents =
        hash.key?('revenue_in_cents') ? hash['revenue_in_cents'] : SKIP

      # Create object from extracted values.
      CouponUsage.new(id,
                      name,
                      signups,
                      savings,
                      savings_in_cents,
                      revenue,
                      revenue_in_cents)
    end
  end
end
