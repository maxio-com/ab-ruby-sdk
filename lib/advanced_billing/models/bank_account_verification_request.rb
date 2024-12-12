# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # BankAccountVerificationRequest Model.
  class BankAccountVerificationRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [BankAccountVerification]
    attr_accessor :bank_account_verification

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bank_account_verification'] = 'bank_account_verification'
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

    def initialize(bank_account_verification:, additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @bank_account_verification = bank_account_verification
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      if hash['bank_account_verification']
        bank_account_verification = BankAccountVerification.from_hash(hash['bank_account_verification'])
      end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      BankAccountVerificationRequest.new(bank_account_verification: bank_account_verification,
                                         additional_properties: additional_properties)
    end
  end
end
