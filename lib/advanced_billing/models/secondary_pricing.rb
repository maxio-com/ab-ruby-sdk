# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Hybrid Pricing only. The secondary pricing model that takes over once usage
  # passes the primary model's included threshold. Applies to Quantity-Based and
  # Metered Components on Sites with Hybrid Pricing enabled; ignored otherwise.
  # Its `prices` brackets start at `1`, not at the primary model's highest
  # `ending_quantity`. See [Hybrid
  # Pricing](page:introduction/basic-concepts/hybrid-pricing).
  class SecondaryPricing < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Required, unless you send the top-level `secondary_pricing_scheme` instead
    # (Create and Update Component Price Point only). A block with neither
    # returns `422` (`Secondary pricing scheme must be defined`).
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # Required, unless you send the top-level `secondary_pricing_scheme` instead
    # (Create and Update Component Price Point only). A block with neither
    # returns `422` (`Secondary pricing scheme must be defined`).
    # @return [Array[Price]]
    attr_accessor :prices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['prices'] = 'prices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pricing_scheme
        prices
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pricing_scheme: SKIP, prices: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @prices = prices unless prices == SKIP
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

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SecondaryPricing.new(pricing_scheme: pricing_scheme,
                           prices: prices,
                           additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [SecondaryPricing | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} pricing_scheme: #{@pricing_scheme}, prices: #{@prices},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} pricing_scheme: #{@pricing_scheme.inspect}, prices: #{@prices.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
