# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionIncludedCoupon Model.
  class SubscriptionIncludedCoupon < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :use_count

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :uses_allowed

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :expires_at

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :recurring

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount_in_cents

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :percentage

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['use_count'] = 'use_count'
      @_hash['uses_allowed'] = 'uses_allowed'
      @_hash['expires_at'] = 'expires_at'
      @_hash['recurring'] = 'recurring'
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['percentage'] = 'percentage'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        code
        use_count
        uses_allowed
        expires_at
        recurring
        amount_in_cents
        percentage
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        expires_at
        amount_in_cents
        percentage
      ]
    end

    def initialize(code: SKIP, use_count: SKIP, uses_allowed: SKIP,
                   expires_at: SKIP, recurring: SKIP, amount_in_cents: SKIP,
                   percentage: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @code = code unless code == SKIP
      @use_count = use_count unless use_count == SKIP
      @uses_allowed = uses_allowed unless uses_allowed == SKIP
      @expires_at = expires_at unless expires_at == SKIP
      @recurring = recurring unless recurring == SKIP
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
      @percentage = percentage unless percentage == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash.key?('code') ? hash['code'] : SKIP
      use_count = hash.key?('use_count') ? hash['use_count'] : SKIP
      uses_allowed = hash.key?('uses_allowed') ? hash['uses_allowed'] : SKIP
      expires_at = hash.key?('expires_at') ? hash['expires_at'] : SKIP
      recurring = hash.key?('recurring') ? hash['recurring'] : SKIP
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : SKIP
      percentage = hash.key?('percentage') ? hash['percentage'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionIncludedCoupon.new(code: code,
                                     use_count: use_count,
                                     uses_allowed: uses_allowed,
                                     expires_at: expires_at,
                                     recurring: recurring,
                                     amount_in_cents: amount_in_cents,
                                     percentage: percentage,
                                     additional_properties: additional_properties)
    end
  end
end
