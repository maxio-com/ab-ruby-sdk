# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Only `name`, `description`, `taxable`, `tax_code`, `accounting_code`, and
  # `item_category` are mutable. `unit_name`, `handle`, `price_point`, and
  # `price_points` are not accepted here: the request still returns `200`, but
  # those fields are silently ignored and nothing about them changes. `handle`
  # stays fixed because it's the Wallet Product's only stable identifier on a
  # surface with no product family in the path; `unit_name` stays fixed because
  # a wallet's behavior snapshots it into the wallet's own `unit` field and
  # never re-derives it.
  class UpdateWalletProductRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [WalletProduct1]
    attr_accessor :wallet_product

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wallet_product'] = 'wallet_product'
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

    def initialize(wallet_product:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @wallet_product = wallet_product
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      wallet_product = WalletProduct1.from_hash(hash['wallet_product']) if hash['wallet_product']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdateWalletProductRequest.new(wallet_product: wallet_product,
                                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_product: #{@wallet_product}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_product: #{@wallet_product.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
