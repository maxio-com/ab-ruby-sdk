# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # UpdateComponentPricePoint Model.
  class UpdateComponentPricePoint < BaseModel
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

    # Whether to use the site level exchange rate or define your own prices for
    # each currency if you have multiple currencies defined on the site.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # Whether or not the price point includes tax
    # @return [TrueClass | FalseClass]
    attr_accessor :tax_included

    # The numerical interval. e.g., an interval of ‘30’ coupled with an
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
    # @return [Array[UpdatePrice]]
    attr_accessor :prices

    # Hybrid Pricing only. Changes the secondary pricing model of an existing
    # hybrid price point. Send `pricing_scheme` (or the top-level
    # `secondary_pricing_scheme`) every time you send this block; a block
    # without a scheme returns `422`. Brackets sent without an `id` are added to
    # the existing ones rather than replacing them, so to change a bracket set,
    # update existing brackets by `id` and remove the ones you no longer want
    # with `_destroy: true`. See [Hybrid
    # Pricing](page:introduction/basic-concepts/hybrid-pricing).
    # @return [UpdateSecondaryPricing]
    attr_accessor :secondary_pricing

    # Hybrid Pricing only. Alternative to `secondary_pricing.pricing_scheme`;
    # when both are sent, `secondary_pricing.pricing_scheme` is used.
    # @return [PricingScheme]
    attr_accessor :secondary_pricing_scheme

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash['tax_included'] = 'tax_included'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash['prices'] = 'prices'
      @_hash['secondary_pricing'] = 'secondary_pricing'
      @_hash['secondary_pricing_scheme'] = 'secondary_pricing_scheme'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        handle
        pricing_scheme
        use_site_exchange_rate
        tax_included
        interval
        interval_unit
        prices
        secondary_pricing
        secondary_pricing_scheme
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        interval_unit
      ]
    end

    def initialize(name: SKIP, handle: SKIP, pricing_scheme: SKIP,
                   use_site_exchange_rate: SKIP, tax_included: SKIP,
                   interval: SKIP, interval_unit: SKIP, prices: SKIP,
                   secondary_pricing: SKIP, secondary_pricing_scheme: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @name = name unless name == SKIP
      @handle = handle unless handle == SKIP
      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP
      @tax_included = tax_included unless tax_included == SKIP
      @interval = interval unless interval == SKIP
      @interval_unit = interval_unit unless interval_unit == SKIP
      @prices = prices unless prices == SKIP
      @secondary_pricing = secondary_pricing unless secondary_pricing == SKIP
      @secondary_pricing_scheme = secondary_pricing_scheme unless secondary_pricing_scheme == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : SKIP
      use_site_exchange_rate =
        hash.key?('use_site_exchange_rate') ? hash['use_site_exchange_rate'] : SKIP
      tax_included = hash.key?('tax_included') ? hash['tax_included'] : SKIP
      interval = hash.key?('interval') ? hash['interval'] : SKIP
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : SKIP
      # Parameter is an array, so we need to iterate through it
      prices = nil
      unless hash['prices'].nil?
        prices = []
        hash['prices'].each do |structure|
          prices << (UpdatePrice.from_hash(structure) if structure)
        end
      end

      prices = SKIP unless hash.key?('prices')
      secondary_pricing = UpdateSecondaryPricing.from_hash(hash['secondary_pricing']) if
        hash['secondary_pricing']
      secondary_pricing_scheme =
        hash.key?('secondary_pricing_scheme') ? hash['secondary_pricing_scheme'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdateComponentPricePoint.new(name: name,
                                    handle: handle,
                                    pricing_scheme: pricing_scheme,
                                    use_site_exchange_rate: use_site_exchange_rate,
                                    tax_included: tax_included,
                                    interval: interval,
                                    interval_unit: interval_unit,
                                    prices: prices,
                                    secondary_pricing: secondary_pricing,
                                    secondary_pricing_scheme: secondary_pricing_scheme,
                                    additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, handle: #{@handle}, pricing_scheme: #{@pricing_scheme},"\
      " use_site_exchange_rate: #{@use_site_exchange_rate}, tax_included: #{@tax_included},"\
      " interval: #{@interval}, interval_unit: #{@interval_unit}, prices: #{@prices},"\
      " secondary_pricing: #{@secondary_pricing}, secondary_pricing_scheme:"\
      " #{@secondary_pricing_scheme}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, handle: #{@handle.inspect}, pricing_scheme:"\
      " #{@pricing_scheme.inspect}, use_site_exchange_rate: #{@use_site_exchange_rate.inspect},"\
      " tax_included: #{@tax_included.inspect}, interval: #{@interval.inspect}, interval_unit:"\
      " #{@interval_unit.inspect}, prices: #{@prices.inspect}, secondary_pricing:"\
      " #{@secondary_pricing.inspect}, secondary_pricing_scheme:"\
      " #{@secondary_pricing_scheme.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
