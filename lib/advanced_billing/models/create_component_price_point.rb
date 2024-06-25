# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateComponentPricePoint Model.
  class CreateComponentPricePoint < BaseModel
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

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [Array[Price]]
    attr_accessor :prices

    # Whether to use the site level exchange rate or define your own prices for
    # each currency if you have multiple currencies defined on the site.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # Whether or not the price point includes tax
    # @return [TrueClass | FalseClass]
    attr_accessor :tax_included

    # The numerical interval. i.e. an interval of ‘30’ coupled with an
    # interval_unit of day would mean this price point would renew every 30
    # days. This property is only available for sites with Multifrequency
    # enabled.
    # @return [Integer]
    attr_accessor :interval

    # A string representing the interval unit for this price point, either month
    # or day. This property is only available for sites with Multifrequency
    # enabled.
    # @return [IntervalUnit]
    attr_accessor :interval_unit

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['prices'] = 'prices'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash['tax_included'] = 'tax_included'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        handle
        use_site_exchange_rate
        tax_included
        interval
        interval_unit
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name:, pricing_scheme:, prices:, handle: SKIP,
                   use_site_exchange_rate: true, tax_included: SKIP,
                   interval: SKIP, interval_unit: SKIP,
                   additional_properties: {})
      @name = name
      @handle = handle unless handle == SKIP
      @pricing_scheme = pricing_scheme
      @prices = prices
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP
      @tax_included = tax_included unless tax_included == SKIP
      @interval = interval unless interval == SKIP
      @interval_unit = interval_unit unless interval_unit == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
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
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      use_site_exchange_rate = hash['use_site_exchange_rate'] ||= true
      tax_included = hash.key?('tax_included') ? hash['tax_included'] : SKIP
      interval = hash.key?('interval') ? hash['interval'] : SKIP
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      CreateComponentPricePoint.new(name: name,
                                    pricing_scheme: pricing_scheme,
                                    prices: prices,
                                    handle: handle,
                                    use_site_exchange_rate: use_site_exchange_rate,
                                    tax_included: tax_included,
                                    interval: interval,
                                    interval_unit: interval_unit,
                                    additional_properties: hash)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateComponentPricePoint | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.name,
                                ->(val) { val.instance_of? String }) and
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
        APIHelper.valid_type?(value['name'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['pricing_scheme'],
                                ->(val) { PricingScheme.validate(val) }) and
          APIHelper.valid_type?(value['prices'],
                                ->(val) { Price.validate(val) },
                                is_model_hash: true,
                                is_inner_model_hash: true)
      )
    end
  end
end
