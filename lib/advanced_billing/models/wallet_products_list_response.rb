# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # WalletProductsListResponse Model.
  class WalletProductsListResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[WalletProductListItem]]
    attr_accessor :wallet_products

    # Total number of Wallet Products matching the filters, across all pages.
    # @return [Integer]
    attr_accessor :total_count

    # Not a simple count of archived products matching the filters. With
    # `status=archived`, equals `total_count` (there's nothing else to report).
    # With any other `status`, it's `0` whenever `total_count` is non-zero, and
    # only when `total_count` is `0` does it become the number of archived
    # Wallet Products matching the same `q` search term (ignoring `status`): an
    # empty-state hint, not a running total.
    # @return [Integer]
    attr_accessor :archived_count

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wallet_products'] = 'wallet_products'
      @_hash['total_count'] = 'total_count'
      @_hash['archived_count'] = 'archived_count'
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

    def initialize(wallet_products:, total_count:, archived_count:,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @wallet_products = wallet_products
      @total_count = total_count
      @archived_count = archived_count
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      wallet_products = nil
      unless hash['wallet_products'].nil?
        wallet_products = []
        hash['wallet_products'].each do |structure|
          wallet_products << (WalletProductListItem.from_hash(structure) if structure)
        end
      end

      wallet_products = nil unless hash.key?('wallet_products')
      total_count = hash.key?('total_count') ? hash['total_count'] : nil
      archived_count =
        hash.key?('archived_count') ? hash['archived_count'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletProductsListResponse.new(wallet_products: wallet_products,
                                     total_count: total_count,
                                     archived_count: archived_count,
                                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_products: #{@wallet_products}, total_count: #{@total_count},"\
      " archived_count: #{@archived_count}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_products: #{@wallet_products.inspect}, total_count:"\
      " #{@total_count.inspect}, archived_count: #{@archived_count.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
