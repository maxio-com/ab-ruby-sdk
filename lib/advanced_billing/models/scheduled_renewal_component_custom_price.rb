# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Custom pricing for a component within a scheduled renewal.
  class ScheduledRenewalComponentCustomPrice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Whether or not the price point includes tax
    # @return [TrueClass | FalseClass]
    attr_accessor :tax_included

    # Omit for On/Off components
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # On/off components only need one price bracket starting at 1.
    # @return [Array[Price]]
    attr_accessor :prices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['tax_included'] = 'tax_included'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['prices'] = 'prices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        tax_included
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(pricing_scheme:, prices:, tax_included: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @tax_included = tax_included unless tax_included == SKIP
      @pricing_scheme = pricing_scheme
      @prices = prices
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : nil
      # Parameter is an array, so we need to iterate through it
      prices = nil
      unless hash['prices'].nil?
        prices = []
        hash['prices'].each do |structure|
          prices << (Price.from_hash(structure) if structure)
        end
      end

      prices = nil unless hash.key?('prices')
      tax_included = hash.key?('tax_included') ? hash['tax_included'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ScheduledRenewalComponentCustomPrice.new(pricing_scheme: pricing_scheme,
                                               prices: prices,
                                               tax_included: tax_included,
                                               additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [ScheduledRenewalComponentCustomPrice | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.pricing_scheme,
                                ->(val) { PricingScheme.validate(val) }) and
            APIHelper.valid_type?(value.prices,
                                  ->(val) { Price.validate(val) },
                                  is_model_hash: true,
                                  is_inner_model_hash: true)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['pricing_scheme'],
                              ->(val) { PricingScheme.validate(val) }) and
          APIHelper.valid_type?(value['prices'],
                                ->(val) { Price.validate(val) },
                                is_model_hash: true,
                                is_inner_model_hash: true)
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} tax_included: #{@tax_included}, pricing_scheme: #{@pricing_scheme}, prices:"\
      " #{@prices}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} tax_included: #{@tax_included.inspect}, pricing_scheme:"\
      " #{@pricing_scheme.inspect}, prices: #{@prices.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
