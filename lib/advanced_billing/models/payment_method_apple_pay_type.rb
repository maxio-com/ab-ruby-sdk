# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PaymentMethodApplePayType Model.
  class PaymentMethodApplePayType < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(type = 'apple_pay')
      @type = type unless type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type'] ||= 'apple_pay'

      # Create object from extracted values.
      PaymentMethodApplePayType.new(type)
    end

    # Validates an instance of the object from a given value.
    # @param [PaymentMethodApplePayType | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
