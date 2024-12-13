# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # MRRMovement Model.
  class MRRMovement < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :category

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscriber_delta

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :lead_delta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['category'] = 'category'
      @_hash['subscriber_delta'] = 'subscriber_delta'
      @_hash['lead_delta'] = 'lead_delta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        amount
        category
        subscriber_delta
        lead_delta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount: SKIP, category: SKIP, subscriber_delta: SKIP,
                   lead_delta: SKIP, additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @amount = amount unless amount == SKIP
      @category = category unless category == SKIP
      @subscriber_delta = subscriber_delta unless subscriber_delta == SKIP
      @lead_delta = lead_delta unless lead_delta == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      category = hash.key?('category') ? hash['category'] : SKIP
      subscriber_delta =
        hash.key?('subscriber_delta') ? hash['subscriber_delta'] : SKIP
      lead_delta = hash.key?('lead_delta') ? hash['lead_delta'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      MRRMovement.new(amount: amount,
                      category: category,
                      subscriber_delta: subscriber_delta,
                      lead_delta: lead_delta,
                      additional_properties: additional_properties)
    end
  end
end
