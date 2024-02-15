# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Movement Model.
  class Movement < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :timestamp

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount_in_cents

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :amount_formatted

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :category

    # TODO: Write general description for this method
    # @return [Breakouts]
    attr_accessor :breakouts

    # TODO: Write general description for this method
    # @return [Array[MovementLineItem]]
    attr_accessor :line_items

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscription_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :subscriber_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['timestamp'] = 'timestamp'
      @_hash['amount_in_cents'] = 'amount_in_cents'
      @_hash['amount_formatted'] = 'amount_formatted'
      @_hash['description'] = 'description'
      @_hash['category'] = 'category'
      @_hash['breakouts'] = 'breakouts'
      @_hash['line_items'] = 'line_items'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['subscriber_name'] = 'subscriber_name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        timestamp
        amount_in_cents
        amount_formatted
        description
        category
        breakouts
        line_items
        subscription_id
        subscriber_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(timestamp = SKIP,
                   amount_in_cents = SKIP,
                   amount_formatted = SKIP,
                   description = SKIP,
                   category = SKIP,
                   breakouts = SKIP,
                   line_items = SKIP,
                   subscription_id = SKIP,
                   subscriber_name = SKIP)
      @timestamp = timestamp unless timestamp == SKIP
      @amount_in_cents = amount_in_cents unless amount_in_cents == SKIP
      @amount_formatted = amount_formatted unless amount_formatted == SKIP
      @description = description unless description == SKIP
      @category = category unless category == SKIP
      @breakouts = breakouts unless breakouts == SKIP
      @line_items = line_items unless line_items == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @subscriber_name = subscriber_name unless subscriber_name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      timestamp = if hash.key?('timestamp')
                    (DateTimeHelper.from_rfc3339(hash['timestamp']) if hash['timestamp'])
                  else
                    SKIP
                  end
      amount_in_cents =
        hash.key?('amount_in_cents') ? hash['amount_in_cents'] : SKIP
      amount_formatted =
        hash.key?('amount_formatted') ? hash['amount_formatted'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      category = hash.key?('category') ? hash['category'] : SKIP
      breakouts = Breakouts.from_hash(hash['breakouts']) if hash['breakouts']
      # Parameter is an array, so we need to iterate through it
      line_items = nil
      unless hash['line_items'].nil?
        line_items = []
        hash['line_items'].each do |structure|
          line_items << (MovementLineItem.from_hash(structure) if structure)
        end
      end

      line_items = SKIP unless hash.key?('line_items')
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      subscriber_name =
        hash.key?('subscriber_name') ? hash['subscriber_name'] : SKIP

      # Create object from extracted values.
      Movement.new(timestamp,
                   amount_in_cents,
                   amount_formatted,
                   description,
                   category,
                   breakouts,
                   line_items,
                   subscription_id,
                   subscriber_name)
    end

    def to_custom_timestamp
      DateTimeHelper.to_rfc3339(timestamp)
    end
  end
end
