# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # A rollup of what's using this Wallet Product, for the catalog listing.
  class WalletProductUsageCount < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Number of wallet templates billing through this product, whether or not
    # any wallet has been created from them yet.
    # @return [Integer]
    attr_accessor :wallet_configurations

    # Number of active (non-archived) wallets currently denominated by this
    # product.
    # @return [Integer]
    attr_accessor :active_wallets

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wallet_configurations'] = 'wallet_configurations'
      @_hash['active_wallets'] = 'active_wallets'
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

    def initialize(wallet_configurations:, active_wallets:,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @wallet_configurations = wallet_configurations
      @active_wallets = active_wallets
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      wallet_configurations =
        hash.key?('wallet_configurations') ? hash['wallet_configurations'] : nil
      active_wallets =
        hash.key?('active_wallets') ? hash['active_wallets'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletProductUsageCount.new(wallet_configurations: wallet_configurations,
                                  active_wallets: active_wallets,
                                  additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_configurations: #{@wallet_configurations}, active_wallets:"\
      " #{@active_wallets}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_configurations: #{@wallet_configurations.inspect}, active_wallets:"\
      " #{@active_wallets.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
