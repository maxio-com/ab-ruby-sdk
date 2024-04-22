# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ComponentPricePointItem Model.
  class ComponentPricePointItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :handle

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # The numerical interval. i.e. an interval of ‘30’ coupled with an
    # interval_unit of day would mean this component price point would renew
    # every 30 days. This property is only available for sites with
    # Multifrequency enabled.
    # @return [Integer]
    attr_accessor :interval

    # A string representing the interval unit for this component price point,
    # either month or day. This property is only available for sites with
    # Multifrequency enabled.
    # @return [IntervalUnit]
    attr_accessor :interval_unit

    # A string representing the interval unit for this component price point,
    # either month or day. This property is only available for sites with
    # Multifrequency enabled.
    # @return [Array[Price]]
    attr_accessor :prices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash['prices'] = 'prices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        handle
        pricing_scheme
        interval
        interval_unit
        prices
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = SKIP,
                   handle = SKIP,
                   pricing_scheme = SKIP,
                   interval = SKIP,
                   interval_unit = SKIP,
                   prices = SKIP,
                   additional_properties = {})
      @name = name unless name == SKIP
      @handle = handle unless handle == SKIP
      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @interval = interval unless interval == SKIP
      @interval_unit = interval_unit unless interval_unit == SKIP
      @prices = prices unless prices == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : SKIP
      interval = hash.key?('interval') ? hash['interval'] : SKIP
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : SKIP
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
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ComponentPricePointItem.new(name,
                                  handle,
                                  pricing_scheme,
                                  interval,
                                  interval_unit,
                                  prices,
                                  hash)
    end

    # Validates an instance of the object from a given value.
    # @param [ComponentPricePointItem | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
