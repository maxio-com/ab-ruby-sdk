# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # DeductServiceCredit Model.
  class DeductServiceCredit < BaseModel
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
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount = nil,
                   memo = nil,
                   additional_properties = {})
      @amount = amount
      @memo = memo

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:DeductServiceCreditAmount), hash['amount']
      ) : nil
      memo = hash.key?('memo') ? hash['memo'] : nil

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      DeductServiceCredit.new(amount,
                              memo,
                              hash)
    end

    # Validates an instance of the object from a given value.
    # @param [DeductServiceCredit | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          UnionTypeLookUp.get(:DeductServiceCreditAmount)
                         .validate(value.amount) and
            APIHelper.valid_type?(value.memo,
                                  ->(val) { val.instance_of? String })
        )
      end

      return false unless value.instance_of? Hash

      (
        UnionTypeLookUp.get(:DeductServiceCreditAmount)
                       .validate(value['amount']) and
          APIHelper.valid_type?(value['memo'],
                                ->(val) { val.instance_of? String })
      )
    end
  end
end
