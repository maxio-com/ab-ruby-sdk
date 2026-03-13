# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Create or update custom pricing unique to the subscription. Used in place of
  # `price_point_id`.
  class ComponentCustomPrice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Whether or not the price point includes tax
    # @return [TrueClass | FalseClass]
    attr_accessor :tax_included

    # Omit for On/Off components
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

    # Optional id of the price point to use for list price calculations when
    # overriding the customer price.
    # @return [Integer]
    attr_accessor :list_price_point_id

    # When true, list price calculations will continue to use the default price
    # point even when a `custom_price` is supplied.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_default_list_price

    # On/off components only need one price bracket starting at 1.
    # @return [Array[Price]]
    attr_accessor :prices

    # Applicable only to prepaid usage components. Controls whether the
    # allocated quantity renews each period.
    # @return [TrueClass | FalseClass]
    attr_accessor :renew_prepaid_allocation

    # Applicable only to prepaid usage components. Controls whether remaining
    # units roll over to the next period.
    # @return [TrueClass | FalseClass]
    attr_accessor :rollover_prepaid_remainder

    # Applicable only when rollover is enabled. Number of
    # `expiration_interval_unit`s after which rollover amounts expire.
    # @return [Integer]
    attr_accessor :expiration_interval

    # Applicable only when rollover is enabled. Interval unit for rollover
    # expiration (month or day).
    # @return [ExpirationIntervalUnit]
    attr_accessor :expiration_interval_unit

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['tax_included'] = 'tax_included'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash['list_price_point_id'] = 'list_price_point_id'
      @_hash['use_default_list_price'] = 'use_default_list_price'
      @_hash['prices'] = 'prices'
      @_hash['renew_prepaid_allocation'] = 'renew_prepaid_allocation'
      @_hash['rollover_prepaid_remainder'] = 'rollover_prepaid_remainder'
      @_hash['expiration_interval'] = 'expiration_interval'
      @_hash['expiration_interval_unit'] = 'expiration_interval_unit'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        tax_included
        pricing_scheme
        interval
        interval_unit
        list_price_point_id
        use_default_list_price
        renew_prepaid_allocation
        rollover_prepaid_remainder
        expiration_interval
        expiration_interval_unit
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        interval_unit
        list_price_point_id
        expiration_interval
        expiration_interval_unit
      ]
    end

    def initialize(prices:, tax_included: SKIP, pricing_scheme: SKIP,
                   interval: SKIP, interval_unit: SKIP,
                   list_price_point_id: SKIP, use_default_list_price: SKIP,
                   renew_prepaid_allocation: SKIP,
                   rollover_prepaid_remainder: SKIP, expiration_interval: SKIP,
                   expiration_interval_unit: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @tax_included = tax_included unless tax_included == SKIP
      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @interval = interval unless interval == SKIP
      @interval_unit = interval_unit unless interval_unit == SKIP
      @list_price_point_id = list_price_point_id unless list_price_point_id == SKIP
      @use_default_list_price = use_default_list_price unless use_default_list_price == SKIP
      @prices = prices
      @renew_prepaid_allocation = renew_prepaid_allocation unless renew_prepaid_allocation == SKIP
      unless rollover_prepaid_remainder == SKIP
        @rollover_prepaid_remainder =
          rollover_prepaid_remainder
      end
      @expiration_interval = expiration_interval unless expiration_interval == SKIP
      @expiration_interval_unit = expiration_interval_unit unless expiration_interval_unit == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
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
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : SKIP
      interval = hash.key?('interval') ? hash['interval'] : SKIP
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : SKIP
      list_price_point_id =
        hash.key?('list_price_point_id') ? hash['list_price_point_id'] : SKIP
      use_default_list_price =
        hash.key?('use_default_list_price') ? hash['use_default_list_price'] : SKIP
      renew_prepaid_allocation =
        hash.key?('renew_prepaid_allocation') ? hash['renew_prepaid_allocation'] : SKIP
      rollover_prepaid_remainder =
        hash.key?('rollover_prepaid_remainder') ? hash['rollover_prepaid_remainder'] : SKIP
      expiration_interval =
        hash.key?('expiration_interval') ? hash['expiration_interval'] : SKIP
      expiration_interval_unit =
        hash.key?('expiration_interval_unit') ? hash['expiration_interval_unit'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ComponentCustomPrice.new(prices: prices,
                               tax_included: tax_included,
                               pricing_scheme: pricing_scheme,
                               interval: interval,
                               interval_unit: interval_unit,
                               list_price_point_id: list_price_point_id,
                               use_default_list_price: use_default_list_price,
                               renew_prepaid_allocation: renew_prepaid_allocation,
                               rollover_prepaid_remainder: rollover_prepaid_remainder,
                               expiration_interval: expiration_interval,
                               expiration_interval_unit: expiration_interval_unit,
                               additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [ComponentCustomPrice | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.prices,
                                     ->(val) { Price.validate(val) },
                                     is_model_hash: true,
                                     is_inner_model_hash: true)
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['prices'],
                            ->(val) { Price.validate(val) },
                            is_model_hash: true,
                            is_inner_model_hash: true)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} tax_included: #{@tax_included}, pricing_scheme: #{@pricing_scheme},"\
      " interval: #{@interval}, interval_unit: #{@interval_unit}, list_price_point_id:"\
      " #{@list_price_point_id}, use_default_list_price: #{@use_default_list_price}, prices:"\
      " #{@prices}, renew_prepaid_allocation: #{@renew_prepaid_allocation},"\
      " rollover_prepaid_remainder: #{@rollover_prepaid_remainder}, expiration_interval:"\
      " #{@expiration_interval}, expiration_interval_unit: #{@expiration_interval_unit},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} tax_included: #{@tax_included.inspect}, pricing_scheme:"\
      " #{@pricing_scheme.inspect}, interval: #{@interval.inspect}, interval_unit:"\
      " #{@interval_unit.inspect}, list_price_point_id: #{@list_price_point_id.inspect},"\
      " use_default_list_price: #{@use_default_list_price.inspect}, prices: #{@prices.inspect},"\
      " renew_prepaid_allocation: #{@renew_prepaid_allocation.inspect},"\
      " rollover_prepaid_remainder: #{@rollover_prepaid_remainder.inspect}, expiration_interval:"\
      " #{@expiration_interval.inspect}, expiration_interval_unit:"\
      " #{@expiration_interval_unit.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
