# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # WalletTransactionsListResponse Model.
  class WalletTransactionsListResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[WalletTransaction]]
    attr_accessor :wallet_transactions

    # TODO: Write general description for this method
    # @return [ListPublicKeysMeta]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wallet_transactions'] = 'wallet_transactions'
      @_hash['meta'] = 'meta'
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

    def initialize(wallet_transactions:, meta:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @wallet_transactions = wallet_transactions
      @meta = meta
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      wallet_transactions = nil
      unless hash['wallet_transactions'].nil?
        wallet_transactions = []
        hash['wallet_transactions'].each do |structure|
          wallet_transactions << (WalletTransaction.from_hash(structure) if structure)
        end
      end

      wallet_transactions = nil unless hash.key?('wallet_transactions')
      meta = ListPublicKeysMeta.from_hash(hash['meta']) if hash['meta']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletTransactionsListResponse.new(wallet_transactions: wallet_transactions,
                                         meta: meta,
                                         additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_transactions: #{@wallet_transactions}, meta: #{@meta},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_transactions: #{@wallet_transactions.inspect}, meta:"\
      " #{@meta.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
