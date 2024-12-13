# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Used in place of `price_point_id` to define a custom price point unique to
  # the subscription. You still need to provide `component_id`.
  class SubscriptionGroupComponentCustomPrice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [Array[Price]]
    attr_accessor :prices

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [Array[ComponentCustomPrice]]
    attr_accessor :overage_pricing

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['prices'] = 'prices'
      @_hash['overage_pricing'] = 'overage_pricing'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pricing_scheme
        prices
        overage_pricing
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pricing_scheme: SKIP, prices: SKIP, overage_pricing: SKIP,
                   additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @prices = prices unless prices == SKIP
      @overage_pricing = overage_pricing unless overage_pricing == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : SKIP
      # Parameter is an array, so we need to iterate through it
      prices = nil
      unless hash['prices'].nil?
        prices = []
        hash['prices'].each do |structure|
          prices << (Price.from_hash(structure) if structure)
        end
      end

      prices = SKIP unless hash.key?('prices')
      # Parameter is an array, so we need to iterate through it
      overage_pricing = nil
      unless hash['overage_pricing'].nil?
        overage_pricing = []
        hash['overage_pricing'].each do |structure|
          overage_pricing << (ComponentCustomPrice.from_hash(structure) if structure)
        end
      end

      overage_pricing = SKIP unless hash.key?('overage_pricing')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionGroupComponentCustomPrice.new(pricing_scheme: pricing_scheme,
                                                prices: prices,
                                                overage_pricing: overage_pricing,
                                                additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [SubscriptionGroupComponentCustomPrice | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
