# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # AccountBalance Model.
  class AccountBalance < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The balance in cents.
    # @return [Integer]
    attr_accessor :balance_in_cents

    # The automatic balance in cents.
    # @return [Integer]
    attr_accessor :automatic_balance_in_cents

    # The remittance balance in cents.
    # @return [Integer]
    attr_accessor :remittance_balance_in_cents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['balance_in_cents'] = 'balance_in_cents'
      @_hash['automatic_balance_in_cents'] = 'automatic_balance_in_cents'
      @_hash['remittance_balance_in_cents'] = 'remittance_balance_in_cents'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        balance_in_cents
        automatic_balance_in_cents
        remittance_balance_in_cents
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        automatic_balance_in_cents
        remittance_balance_in_cents
      ]
    end

    def initialize(balance_in_cents = SKIP,
                   automatic_balance_in_cents = SKIP,
                   remittance_balance_in_cents = SKIP,
                   additional_properties = {})
      @balance_in_cents = balance_in_cents unless balance_in_cents == SKIP
      unless automatic_balance_in_cents == SKIP
        @automatic_balance_in_cents =
          automatic_balance_in_cents
      end
      unless remittance_balance_in_cents == SKIP
        @remittance_balance_in_cents =
          remittance_balance_in_cents
      end

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      balance_in_cents =
        hash.key?('balance_in_cents') ? hash['balance_in_cents'] : SKIP
      automatic_balance_in_cents =
        hash.key?('automatic_balance_in_cents') ? hash['automatic_balance_in_cents'] : SKIP
      remittance_balance_in_cents =
        hash.key?('remittance_balance_in_cents') ? hash['remittance_balance_in_cents'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      AccountBalance.new(balance_in_cents,
                         automatic_balance_in_cents,
                         remittance_balance_in_cents,
                         hash)
    end
  end
end
