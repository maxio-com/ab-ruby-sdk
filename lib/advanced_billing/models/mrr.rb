# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # MRR Model.
  class MRR < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount_in_cents

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :amount_formatted

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :currency_symbol

    # TODO: Write general description for this method
    # @return [Breakouts]
    attr_accessor :breakouts

    # ISO8601 timestamp
    # @return [DateTime]
    attr_accessor :at_time

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['amount_formatted'] = 'amount_formatted'
      @_hash['currency'] = 'currency'
      @_hash['currency_symbol'] = 'currency_symbol'
      @_hash['breakouts'] = 'breakouts'
      @_hash['at_time'] = 'at_time'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount_in_cents
        amount_formatted
        currency
        currency_symbol
        breakouts
        at_time
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount_in_cents: SKIP, amount_formatted: SKIP,
                   currency: SKIP, currency_symbol: SKIP, breakouts: SKIP,
                   at_time: SKIP, additional_properties: {})
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
      @amount_formatted = amount_formatted unless amount_formatted == SKIP
      @currency = currency unless currency == SKIP
      @currency_symbol = currency_symbol unless currency_symbol == SKIP
      @breakouts = breakouts unless breakouts == SKIP
      @at_time = at_time unless at_time == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : SKIP
      amount_formatted =
        hash.key?('amount_formatted') ? hash['amount_formatted'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      currency_symbol =
        hash.key?('currency_symbol') ? hash['currency_symbol'] : SKIP
      breakouts = Breakouts.from_hash(hash['breakouts']) if hash['breakouts']
      at_time = if hash.key?('at_time')
                  (DateTimeHelper.from_rfc3339(hash['at_time']) if hash['at_time'])
                else
                  SKIP
                end

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      MRR.new(amount_in_cents: amount_in_cents,
              amount_formatted: amount_formatted,
              currency: currency,
              currency_symbol: currency_symbol,
              breakouts: breakouts,
              at_time: at_time,
              additional_properties: hash)
    end

    def to_custom_at_time
      DateTimeHelper.to_rfc3339(at_time)
    end
  end
end
