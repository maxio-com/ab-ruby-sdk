# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PaymentMethodBankAccountType Model.
  class PaymentMethodBankAccountType < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :masked_account_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :masked_routing_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['masked_account_number'] = 'masked_account_number'
      @_hash['masked_routing_number'] = 'masked_routing_number'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        masked_account_number
        masked_routing_number
        type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(masked_account_number = SKIP,
                   masked_routing_number = SKIP,
                   type = 'bank_account')
      @masked_account_number = masked_account_number unless masked_account_number == SKIP
      @masked_routing_number = masked_routing_number unless masked_routing_number == SKIP
      @type = type unless type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      masked_account_number =
        hash.key?('masked_account_number') ? hash['masked_account_number'] : SKIP
      masked_routing_number =
        hash.key?('masked_routing_number') ? hash['masked_routing_number'] : SKIP
      type = hash['type'] ||= 'bank_account'

      # Create object from extracted values.
      PaymentMethodBankAccountType.new(masked_account_number,
                                       masked_routing_number,
                                       type)
    end

    # Validates an instance of the object from a given value.
    # @param [PaymentMethodBankAccountType | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
