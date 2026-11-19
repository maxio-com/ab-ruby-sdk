# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # WalletPurchasePreviewResponse Model.
  class WalletPurchasePreviewResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[WalletPurchasePreview]]
    attr_accessor :wallet_purchase_previews

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wallet_purchase_previews'] = 'wallet_purchase_previews'
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

    def initialize(wallet_purchase_previews:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @wallet_purchase_previews = wallet_purchase_previews
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      wallet_purchase_previews = nil
      unless hash['wallet_purchase_previews'].nil?
        wallet_purchase_previews = []
        hash['wallet_purchase_previews'].each do |structure|
          wallet_purchase_previews << (WalletPurchasePreview.from_hash(structure) if structure)
        end
      end

      wallet_purchase_previews = nil unless hash.key?('wallet_purchase_previews')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletPurchasePreviewResponse.new(wallet_purchase_previews: wallet_purchase_previews,
                                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_purchase_previews: #{@wallet_purchase_previews},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} wallet_purchase_previews: #{@wallet_purchase_previews.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
