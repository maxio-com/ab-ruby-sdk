# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # A price point to create for the Wallet Product, in the same call that
  # creates or updates it.
  class WalletProductPricePointAttributes < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The price point's name. Required. Omitting it fails validation with a
    # message that reads `Name: cannot be blank.`, not naming the price point.
    # @return [String]
    attr_accessor :name

    # The price point's name. Required. Omitting it fails validation with a
    # message that reads `Name: cannot be blank.`, not naming the price point.
    # @return [String]
    attr_accessor :handle

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # Required when `pricing_scheme` is `per_unit`.
    # @return [String]
    attr_accessor :unit_price

    # Required when `pricing_scheme` is `per_unit`.
    # @return [TrueClass | FalseClass]
    attr_accessor :tax_included

    # Requires Multifrequency to be enabled on the site.
    # @return [Integer]
    attr_accessor :interval

    # Requires Multifrequency to be enabled on the site.
    # @return [IntervalUnit]
    attr_accessor :interval_unit

    # Requires Multifrequency to be enabled on the site.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # Required for every `pricing_scheme` other than `per_unit`.
    # @return [Array[Price1]]
    attr_accessor :prices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['unit_price'] = 'unit_price'
      @_hash['tax_included'] = 'tax_included'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash['prices'] = 'prices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        handle
        pricing_scheme
        unit_price
        tax_included
        interval
        interval_unit
        use_site_exchange_rate
        prices
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        unit_price
      ]
    end

    def initialize(name:, handle: SKIP, pricing_scheme: SKIP, unit_price: SKIP,
                   tax_included: SKIP, interval: SKIP, interval_unit: SKIP,
                   use_site_exchange_rate: SKIP, prices: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @name = name
      @handle = handle unless handle == SKIP
      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @unit_price = unit_price unless unit_price == SKIP
      @tax_included = tax_included unless tax_included == SKIP
      @interval = interval unless interval == SKIP
      @interval_unit = interval_unit unless interval_unit == SKIP
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP
      @prices = prices unless prices == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : SKIP
      unit_price = hash.key?('unit_price') ? hash['unit_price'] : SKIP
      tax_included = hash.key?('tax_included') ? hash['tax_included'] : SKIP
      interval = hash.key?('interval') ? hash['interval'] : SKIP
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : SKIP
      use_site_exchange_rate =
        hash.key?('use_site_exchange_rate') ? hash['use_site_exchange_rate'] : SKIP
      # Parameter is an array, so we need to iterate through it
      prices = nil
      unless hash['prices'].nil?
        prices = []
        hash['prices'].each do |structure|
          prices << (Price1.from_hash(structure) if structure)
        end
      end

      prices = SKIP unless hash.key?('prices')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      WalletProductPricePointAttributes.new(name: name,
                                            handle: handle,
                                            pricing_scheme: pricing_scheme,
                                            unit_price: unit_price,
                                            tax_included: tax_included,
                                            interval: interval,
                                            interval_unit: interval_unit,
                                            use_site_exchange_rate: use_site_exchange_rate,
                                            prices: prices,
                                            additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, handle: #{@handle}, pricing_scheme: #{@pricing_scheme},"\
      " unit_price: #{@unit_price}, tax_included: #{@tax_included}, interval: #{@interval},"\
      " interval_unit: #{@interval_unit}, use_site_exchange_rate: #{@use_site_exchange_rate},"\
      " prices: #{@prices}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, handle: #{@handle.inspect}, pricing_scheme:"\
      " #{@pricing_scheme.inspect}, unit_price: #{@unit_price.inspect}, tax_included:"\
      " #{@tax_included.inspect}, interval: #{@interval.inspect}, interval_unit:"\
      " #{@interval_unit.inspect}, use_site_exchange_rate: #{@use_site_exchange_rate.inspect},"\
      " prices: #{@prices.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
