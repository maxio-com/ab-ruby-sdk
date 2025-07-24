# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ComponentCostData Model.
  class ComponentCostData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :component_code_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_point_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :product_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :quantity

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :amount

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [Array[ComponentCostDataRateTier]]
    attr_accessor :tiers

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['component_code_id'] = 'component_code_id'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['product_id'] = 'product_id'
      @_hash['quantity'] = 'quantity'
      @_hash['amount'] = 'amount'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['tiers'] = 'tiers'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        component_code_id
        price_point_id
        product_id
        quantity
        amount
        pricing_scheme
        tiers
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        component_code_id
      ]
    end

    def initialize(component_code_id: SKIP, price_point_id: SKIP,
                   product_id: SKIP, quantity: SKIP, amount: SKIP,
                   pricing_scheme: SKIP, tiers: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @component_code_id = component_code_id unless component_code_id == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @product_id = product_id unless product_id == SKIP
      @quantity = quantity unless quantity == SKIP
      @amount = amount unless amount == SKIP
      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @tiers = tiers unless tiers == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      component_code_id =
        hash.key?('component_code_id') ? hash['component_code_id'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      product_id = hash.key?('product_id') ? hash['product_id'] : SKIP
      quantity = hash.key?('quantity') ? hash['quantity'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : SKIP
      # Parameter is an array, so we need to iterate through it
      tiers = nil
      unless hash['tiers'].nil?
        tiers = []
        hash['tiers'].each do |structure|
          tiers << (ComponentCostDataRateTier.from_hash(structure) if structure)
        end
      end

      tiers = SKIP unless hash.key?('tiers')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ComponentCostData.new(component_code_id: component_code_id,
                            price_point_id: price_point_id,
                            product_id: product_id,
                            quantity: quantity,
                            amount: amount,
                            pricing_scheme: pricing_scheme,
                            tiers: tiers,
                            additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [ComponentCostData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} component_code_id: #{@component_code_id}, price_point_id:"\
      " #{@price_point_id}, product_id: #{@product_id}, quantity: #{@quantity}, amount:"\
      " #{@amount}, pricing_scheme: #{@pricing_scheme}, tiers: #{@tiers}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} component_code_id: #{@component_code_id.inspect}, price_point_id:"\
      " #{@price_point_id.inspect}, product_id: #{@product_id.inspect}, quantity:"\
      " #{@quantity.inspect}, amount: #{@amount.inspect}, pricing_scheme:"\
      " #{@pricing_scheme.inspect}, tiers: #{@tiers.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
