# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListSubscriptionGroupPrepaymentResponse Model.
  class ListSubscriptionGroupPrepaymentResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[ListSubscriptionGroupPrepayment]]
    attr_accessor :prepayments

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['prepayments'] = 'prepayments'
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

    def initialize(prepayments = nil,
                   additional_properties = {})
      @prepayments = prepayments

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      prepayments = nil
      unless hash['prepayments'].nil?
        prepayments = []
        hash['prepayments'].each do |structure|
          prepayments << (ListSubscriptionGroupPrepayment.from_hash(structure) if structure)
        end
      end

      prepayments = nil unless hash.key?('prepayments')

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ListSubscriptionGroupPrepaymentResponse.new(prepayments,
                                                  hash)
    end
  end
end
