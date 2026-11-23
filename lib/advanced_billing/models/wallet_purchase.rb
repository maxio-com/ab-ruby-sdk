# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # A completed unit purchase.
  class WalletPurchase < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The id of the grant this purchase created. When the wallet was overdrawn
    # by at least the purchased quantity, the units repay the debt and the grant
    # is still created, with `remaining` of `0` and `original` equal to the
    # purchased quantity.
    # @return [Integer]
    attr_accessor :id

    # The price point the purchase was priced at.
    # @return [Integer]
    attr_accessor :price_point_id

    # The uid of the invoice created to collect payment for this purchase.
    # @return [String]
    attr_accessor :invoice_uid

    # The number of units purchased, as a decimal string.
    # @return [String]
    attr_accessor :quantity

    # When the purchased units expire, following the funding entitlement's grant
    # expiration policy. `null` when the wallet has no funding entitlement or
    # its entitlements disagree on an expiration policy.
    # @return [DateTime]
    attr_accessor :expires_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['invoice_uid'] = 'invoice_uid'
      @_hash['quantity'] = 'quantity'
      @_hash['expires_at'] = 'expires_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      %w[
        expires_at
      ]
    end

    def initialize(id:, price_point_id:, invoice_uid:, quantity:, expires_at:,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id
      @price_point_id = price_point_id
      @invoice_uid = invoice_uid
      @quantity = quantity
      @expires_at = expires_at
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : nil
      invoice_uid = hash.key?('invoice_uid') ? hash['invoice_uid'] : nil
      quantity = hash.key?('quantity') ? hash['quantity'] : nil
      expires_at = if hash.key?('expires_at')
                     (DateTimeHelper.from_rfc3339(hash['expires_at']) if hash['expires_at'])
                   end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletPurchase.new(id: id,
                         price_point_id: price_point_id,
                         invoice_uid: invoice_uid,
                         quantity: quantity,
                         expires_at: expires_at,
                         additional_properties: additional_properties)
    end

    def to_custom_expires_at
      DateTimeHelper.to_rfc3339(expires_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, price_point_id: #{@price_point_id}, invoice_uid:"\
      " #{@invoice_uid}, quantity: #{@quantity}, expires_at: #{@expires_at},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, price_point_id: #{@price_point_id.inspect},"\
      " invoice_uid: #{@invoice_uid.inspect}, quantity: #{@quantity.inspect}, expires_at:"\
      " #{@expires_at.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
