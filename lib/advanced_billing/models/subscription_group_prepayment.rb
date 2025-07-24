# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # SubscriptionGroupPrepayment Model.
  class SubscriptionGroupPrepayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :details

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # TODO: Write general description for this method
    # @return [SubscriptionGroupPrepaymentMethod]
    attr_accessor :method

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['details'] = 'details'
      @_hash['memo'] = 'memo'
      @_hash['method'] = 'method'
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

    def initialize(amount:, details:, memo:, method:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @amount = amount
      @details = details
      @memo = memo
      @method = method
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : nil
      details = hash.key?('details') ? hash['details'] : nil
      memo = hash.key?('memo') ? hash['memo'] : nil
      method = hash.key?('method') ? hash['method'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionGroupPrepayment.new(amount: amount,
                                      details: details,
                                      memo: memo,
                                      method: method,
                                      additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount}, details: #{@details}, memo: #{@memo}, method:"\
      " #{@method}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount.inspect}, details: #{@details.inspect}, memo:"\
      " #{@memo.inspect}, method: #{@method.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
