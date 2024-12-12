# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # ComponentPricePoint Model.
  class ComponentPricePoint < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # Price point type. We expose the following types:
    # 1. **default**: a price point that is marked as a default price for a
    # certain product.
    # 2. **custom**: a custom price point.
    # 3. **catalog**: a price point that is **not** marked as a default price
    # for a certain product and is **not** a custom one.
    # @return [PricePointType]
    attr_accessor :type

    # Note: Refer to type attribute instead
    # @return [TrueClass | FalseClass]
    attr_accessor :default

    # Note: Refer to type attribute instead
    # @return [String]
    attr_accessor :name

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [Integer]
    attr_accessor :component_id

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [String]
    attr_accessor :handle

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [DateTime]
    attr_accessor :archived_at

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [DateTime]
    attr_accessor :created_at

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [DateTime]
    attr_accessor :updated_at

    # The identifier for the pricing scheme. See [Product
    # Components](https://help.chargify.com/products/product-components.html)
    # for an overview of pricing schemes.
    # @return [Array[ComponentPrice]]
    attr_accessor :prices

    # Whether to use the site level exchange rate or define your own prices for
    # each currency if you have multiple currencies defined on the site.
    # Defaults to true during creation.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # (only used for Custom Pricing - ie. when the price point's type is
    # `custom`) The id of the subscription that the custom price point is for.
    # @return [Integer]
    attr_accessor :subscription_id

    # (only used for Custom Pricing - ie. when the price point's type is
    # `custom`) The id of the subscription that the custom price point is for.
    # @return [TrueClass | FalseClass]
    attr_accessor :tax_included

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

    # An array of currency pricing data is available when multiple currencies
    # are defined for the site. It varies based on the use_site_exchange_rate
    # setting for the price point. This parameter is present only in the
    # response of read endpoints, after including the appropriate query
    # parameter.
    # @return [Array[ComponentCurrencyPrice]]
    attr_accessor :currency_prices

    # Applicable only to prepaid usage components. An array of overage price
    # brackets.
    # @return [Array[ComponentPrice]]
    attr_accessor :overage_prices

    # Applicable only to prepaid usage components. Pricing scheme for overage
    # pricing.
    # @return [PricingScheme]
    attr_accessor :overage_pricing_scheme

    # Applicable only to prepaid usage components. Boolean which controls
    # whether or not the allocated quantity should be renewed at the beginning
    # of each period.
    # @return [TrueClass | FalseClass]
    attr_accessor :renew_prepaid_allocation

    # Applicable only to prepaid usage components. Boolean which controls
    # whether or not remaining units should be rolled over to the next period.
    # @return [TrueClass | FalseClass]
    attr_accessor :rollover_prepaid_remainder

    # Applicable only to prepaid usage components where
    # rollover_prepaid_remainder is true. The number of
    # `expiration_interval_unit`s after which rollover amounts should expire.
    # @return [Integer]
    attr_accessor :expiration_interval

    # Applicable only to prepaid usage components where
    # rollover_prepaid_remainder is true. A string representing the expiration
    # interval unit for this component, either month or day.
    # @return [ExpirationIntervalUnit]
    attr_accessor :expiration_interval_unit

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['type'] = 'type'
      @_hash['default'] = 'default'
      @_hash['name'] = 'name'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['component_id'] = 'component_id'
      @_hash['handle'] = 'handle'
      @_hash['archived_at'] = 'archived_at'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['prices'] = 'prices'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['tax_included'] = 'tax_included'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash['currency_prices'] = 'currency_prices'
      @_hash['overage_prices'] = 'overage_prices'
      @_hash['overage_pricing_scheme'] = 'overage_pricing_scheme'
      @_hash['renew_prepaid_allocation'] = 'renew_prepaid_allocation'
      @_hash['rollover_prepaid_remainder'] = 'rollover_prepaid_remainder'
      @_hash['expiration_interval'] = 'expiration_interval'
      @_hash['expiration_interval_unit'] = 'expiration_interval_unit'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        type
        default
        name
        pricing_scheme
        component_id
        handle
        archived_at
        created_at
        updated_at
        prices
        use_site_exchange_rate
        subscription_id
        tax_included
        interval
        interval_unit
        currency_prices
        overage_prices
        overage_pricing_scheme
        renew_prepaid_allocation
        rollover_prepaid_remainder
        expiration_interval
        expiration_interval_unit
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        handle
        archived_at
        interval
        interval_unit
        expiration_interval
        expiration_interval_unit
      ]
    end

    def initialize(id: SKIP, type: SKIP, default: SKIP, name: SKIP,
                   pricing_scheme: SKIP, component_id: SKIP, handle: SKIP,
                   archived_at: SKIP, created_at: SKIP, updated_at: SKIP,
                   prices: SKIP, use_site_exchange_rate: SKIP,
                   subscription_id: SKIP, tax_included: SKIP, interval: SKIP,
                   interval_unit: SKIP, currency_prices: SKIP,
                   overage_prices: SKIP, overage_pricing_scheme: SKIP,
                   renew_prepaid_allocation: SKIP,
                   rollover_prepaid_remainder: SKIP, expiration_interval: SKIP,
                   expiration_interval_unit: SKIP, additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @type = type unless type == SKIP
      @default = default unless default == SKIP
      @name = name unless name == SKIP
      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @component_id = component_id unless component_id == SKIP
      @handle = handle unless handle == SKIP
      @archived_at = archived_at unless archived_at == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @prices = prices unless prices == SKIP
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @tax_included = tax_included unless tax_included == SKIP
      @interval = interval unless interval == SKIP
      @interval_unit = interval_unit unless interval_unit == SKIP
      @currency_prices = currency_prices unless currency_prices == SKIP
      @overage_prices = overage_prices unless overage_prices == SKIP
      @overage_pricing_scheme = overage_pricing_scheme unless overage_pricing_scheme == SKIP
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
      id = hash.key?('id') ? hash['id'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      default = hash.key?('default') ? hash['default'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : SKIP
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      archived_at = if hash.key?('archived_at')
                      (DateTimeHelper.from_rfc3339(hash['archived_at']) if hash['archived_at'])
                    else
                      SKIP
                    end
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      updated_at = if hash.key?('updated_at')
                     (DateTimeHelper.from_rfc3339(hash['updated_at']) if hash['updated_at'])
                   else
                     SKIP
                   end
      # Parameter is an array, so we need to iterate through it
      prices = nil
      unless hash['prices'].nil?
        prices = []
        hash['prices'].each do |structure|
          prices << (ComponentPrice.from_hash(structure) if structure)
        end
      end

      prices = SKIP unless hash.key?('prices')
      use_site_exchange_rate =
        hash.key?('use_site_exchange_rate') ? hash['use_site_exchange_rate'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      tax_included = hash.key?('tax_included') ? hash['tax_included'] : SKIP
      interval = hash.key?('interval') ? hash['interval'] : SKIP
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : SKIP
      # Parameter is an array, so we need to iterate through it
      currency_prices = nil
      unless hash['currency_prices'].nil?
        currency_prices = []
        hash['currency_prices'].each do |structure|
          currency_prices << (ComponentCurrencyPrice.from_hash(structure) if structure)
        end
      end

      currency_prices = SKIP unless hash.key?('currency_prices')
      # Parameter is an array, so we need to iterate through it
      overage_prices = nil
      unless hash['overage_prices'].nil?
        overage_prices = []
        hash['overage_prices'].each do |structure|
          overage_prices << (ComponentPrice.from_hash(structure) if structure)
        end
      end

      overage_prices = SKIP unless hash.key?('overage_prices')
      overage_pricing_scheme =
        hash.key?('overage_pricing_scheme') ? hash['overage_pricing_scheme'] : SKIP
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
      ComponentPricePoint.new(id: id,
                              type: type,
                              default: default,
                              name: name,
                              pricing_scheme: pricing_scheme,
                              component_id: component_id,
                              handle: handle,
                              archived_at: archived_at,
                              created_at: created_at,
                              updated_at: updated_at,
                              prices: prices,
                              use_site_exchange_rate: use_site_exchange_rate,
                              subscription_id: subscription_id,
                              tax_included: tax_included,
                              interval: interval,
                              interval_unit: interval_unit,
                              currency_prices: currency_prices,
                              overage_prices: overage_prices,
                              overage_pricing_scheme: overage_pricing_scheme,
                              renew_prepaid_allocation: renew_prepaid_allocation,
                              rollover_prepaid_remainder: rollover_prepaid_remainder,
                              expiration_interval: expiration_interval,
                              expiration_interval_unit: expiration_interval_unit,
                              additional_properties: additional_properties)
    end

    def to_custom_archived_at
      DateTimeHelper.to_rfc3339(archived_at)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_custom_updated_at
      DateTimeHelper.to_rfc3339(updated_at)
    end
  end
end
