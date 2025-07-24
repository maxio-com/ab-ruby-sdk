# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # IssueServiceCredit Model.
  class IssueServiceCredit < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :amount

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['memo'] = 'memo'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        memo
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount:, memo: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @amount = amount
      @memo = memo unless memo == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:IssueServiceCreditAmount), hash['amount']
      ) : nil
      memo = hash.key?('memo') ? hash['memo'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      IssueServiceCredit.new(amount: amount,
                             memo: memo,
                             additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [IssueServiceCredit | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return UnionTypeLookUp.get(:IssueServiceCreditAmount)
                              .validate(value.amount)
      end

      return false unless value.instance_of? Hash

      UnionTypeLookUp.get(:IssueServiceCreditAmount)
                     .validate(value['amount'])
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount}, memo: #{@memo}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount.inspect}, memo: #{@memo.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
