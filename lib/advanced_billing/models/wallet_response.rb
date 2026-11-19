# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # WalletResponse Model.
  class WalletResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A balance, denominated in the unit of a Wallet Product, owned by a
    # subscription. Grants and recurring funding schedules are embedded so a
    # single read shows the full balance breakdown.
    # @return [Wallet]
    attr_accessor :wallet

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wallet'] = 'wallet'
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

    def initialize(wallet:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @wallet = wallet
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      wallet = Wallet.from_hash(hash['wallet']) if hash['wallet']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletResponse.new(wallet: wallet,
                         additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet: #{@wallet}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet: #{@wallet.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
