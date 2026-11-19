# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # WalletPurchaseResultResponse Model.
  class WalletPurchaseResultResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[WalletPurchase]]
    attr_accessor :wallet_purchases

    # The wallet's new balance, as a decimal string.
    # @return [String]
    attr_accessor :balance

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wallet_purchases'] = 'wallet_purchases'
      @_hash['balance'] = 'balance'
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

    def initialize(wallet_purchases:, balance:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @wallet_purchases = wallet_purchases
      @balance = balance
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      wallet_purchases = nil
      unless hash['wallet_purchases'].nil?
        wallet_purchases = []
        hash['wallet_purchases'].each do |structure|
          wallet_purchases << (WalletPurchase.from_hash(structure) if structure)
        end
      end

      wallet_purchases = nil unless hash.key?('wallet_purchases')
      balance = hash.key?('balance') ? hash['balance'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletPurchaseResultResponse.new(wallet_purchases: wallet_purchases,
                                       balance: balance,
                                       additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_purchases: #{@wallet_purchases}, balance: #{@balance},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_purchases: #{@wallet_purchases.inspect}, balance:"\
      " #{@balance.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
