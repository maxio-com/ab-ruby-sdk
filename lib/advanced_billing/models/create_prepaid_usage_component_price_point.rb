# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreatePrepaidUsageComponentPricePoint Model.
  class CreatePrepaidUsageComponentPricePoint < BaseModel
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

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [OveragePricing]
    attr_accessor :overage_pricing

    # Whether to use the site level exchange rate or define your own prices for
    # each currency if you have multiple currencies defined on the site.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # Boolean which controls whether or not remaining units should be rolled
    # over to the next period
    # @return [TrueClass | FalseClass]
    attr_accessor :rollover_prepaid_remainder

    # Boolean which controls whether or not the allocated quantity should be
    # renewed at the beginning of each period
    # @return [TrueClass | FalseClass]
    attr_accessor :renew_prepaid_allocation

    # (only for prepaid usage components where rollover_prepaid_remainder is
    # true) The number of `expiration_interval_unit`s after which rollover
    # amounts should expire
    # @return [Float]
    attr_accessor :expiration_interval

    # (only for prepaid usage components where rollover_prepaid_remainder is
    # true) The number of `expiration_interval_unit`s after which rollover
    # amounts should expire
    # @return [IntervalUnit]
    attr_accessor :expiration_interval_unit

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['prices'] = 'prices'
      @_hash['overage_pricing'] = 'overage_pricing'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash['rollover_prepaid_remainder'] = 'rollover_prepaid_remainder'
      @_hash['renew_prepaid_allocation'] = 'renew_prepaid_allocation'
      @_hash['expiration_interval'] = 'expiration_interval'
      @_hash['expiration_interval_unit'] = 'expiration_interval_unit'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        handle
        use_site_exchange_rate
        rollover_prepaid_remainder
        renew_prepaid_allocation
        expiration_interval
        expiration_interval_unit
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = nil,
                   pricing_scheme = nil,
                   prices = nil,
                   overage_pricing = nil,
                   handle = SKIP,
                   use_site_exchange_rate = true,
                   rollover_prepaid_remainder = SKIP,
                   renew_prepaid_allocation = SKIP,
                   expiration_interval = SKIP,
                   expiration_interval_unit = SKIP,
                   additional_properties = {})
      @name = name
      @handle = handle unless handle == SKIP
      @pricing_scheme = pricing_scheme
      @prices = prices
      @overage_pricing = overage_pricing
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP
      unless rollover_prepaid_remainder == SKIP
        @rollover_prepaid_remainder =
          rollover_prepaid_remainder
      end
      @renew_prepaid_allocation = renew_prepaid_allocation unless renew_prepaid_allocation == SKIP
      @expiration_interval = expiration_interval unless expiration_interval == SKIP
      @expiration_interval_unit = expiration_interval_unit unless expiration_interval_unit == SKIP

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
      overage_pricing = OveragePricing.from_hash(hash['overage_pricing']) if
        hash['overage_pricing']
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      use_site_exchange_rate = hash['use_site_exchange_rate'] ||= true
      rollover_prepaid_remainder =
        hash.key?('rollover_prepaid_remainder') ? hash['rollover_prepaid_remainder'] : SKIP
      renew_prepaid_allocation =
        hash.key?('renew_prepaid_allocation') ? hash['renew_prepaid_allocation'] : SKIP
      expiration_interval =
        hash.key?('expiration_interval') ? hash['expiration_interval'] : SKIP
      expiration_interval_unit =
        hash.key?('expiration_interval_unit') ? hash['expiration_interval_unit'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      CreatePrepaidUsageComponentPricePoint.new(name,
                                                pricing_scheme,
                                                prices,
                                                overage_pricing,
                                                handle,
                                                use_site_exchange_rate,
                                                rollover_prepaid_remainder,
                                                renew_prepaid_allocation,
                                                expiration_interval,
                                                expiration_interval_unit,
                                                hash)
    end

    # Validates an instance of the object from a given value.
    # @param [CreatePrepaidUsageComponentPricePoint | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.name,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.pricing_scheme,
                                  ->(val) { PricingScheme.validate(val) }) and
            APIHelper.valid_type?(value.prices,
                                  ->(val) { Price.validate(val) }) and
            APIHelper.valid_type?(value.overage_pricing,
                                  ->(val) { OveragePricing.validate(val) })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['name'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['pricing_scheme'],
                                ->(val) { PricingScheme.validate(val) }) and
          APIHelper.valid_type?(value['prices'],
                                ->(val) { Price.validate(val) }) and
          APIHelper.valid_type?(value['overage_pricing'],
                                ->(val) { OveragePricing.validate(val) })
      )
    end
  end
end
