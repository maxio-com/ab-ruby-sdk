# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # WalletProductUsageResponse Model.
  class WalletProductUsageResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Wallet templates billing through this product at its default price point.
    # @return [Array[WalletProductUsageTemplate]]
    attr_accessor :wallet_templates

    # Wallet templates billing through this product at a price point other than
    # the default.
    # @return [Array[WalletProductUsageTemplate]]
    attr_accessor :price_point_overrides

    # Wallet templates billing through this product at a price point other than
    # the default.
    # @return [ActiveWallets]
    attr_accessor :active_wallets

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wallet_templates'] = 'wallet_templates'
      @_hash['price_point_overrides'] = 'price_point_overrides'
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

    def initialize(wallet_templates:, price_point_overrides:, active_wallets:,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @wallet_templates = wallet_templates
      @price_point_overrides = price_point_overrides
      @active_wallets = active_wallets
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      wallet_templates = nil
      unless hash['wallet_templates'].nil?
        wallet_templates = []
        hash['wallet_templates'].each do |structure|
          wallet_templates << (WalletProductUsageTemplate.from_hash(structure) if structure)
        end
      end

      wallet_templates = nil unless hash.key?('wallet_templates')
      # Parameter is an array, so we need to iterate through it
      price_point_overrides = nil
      unless hash['price_point_overrides'].nil?
        price_point_overrides = []
        hash['price_point_overrides'].each do |structure|
          price_point_overrides << (WalletProductUsageTemplate.from_hash(structure) if structure)
        end
      end

      price_point_overrides = nil unless hash.key?('price_point_overrides')
      active_wallets = ActiveWallets.from_hash(hash['active_wallets']) if hash['active_wallets']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletProductUsageResponse.new(wallet_templates: wallet_templates,
                                     price_point_overrides: price_point_overrides,
                                     active_wallets: active_wallets,
                                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_templates: #{@wallet_templates}, price_point_overrides:"\
      " #{@price_point_overrides}, active_wallets: #{@active_wallets}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_templates: #{@wallet_templates.inspect}, price_point_overrides:"\
      " #{@price_point_overrides.inspect}, active_wallets: #{@active_wallets.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
