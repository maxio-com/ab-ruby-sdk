# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # ProductPricePoint Model.
  class ProductPricePoint < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # The product price point name
    # @return [String]
    attr_accessor :name

    # The product price point API handle
    # @return [String]
    attr_accessor :handle

    # The product price point price, in integer cents
    # @return [Integer]
    attr_accessor :price_in_cents

    # The numerical interval. i.e. an interval of ‘30’ coupled with an
    # interval_unit of day would mean this product price point would renew every
    # 30 days
    # @return [Integer]
    attr_accessor :interval

    # A string representing the interval unit for this product price point,
    # either month or day
    # @return [IntervalUnit]
    attr_accessor :interval_unit

    # The product price point trial price, in integer cents
    # @return [Integer]
    attr_accessor :trial_price_in_cents

    # The numerical trial interval. i.e. an interval of ‘30’ coupled with an
    # trial_interval_unit of day would mean this product price point would renew
    # every 30 days
    # @return [Integer]
    attr_accessor :trial_interval

    # A string representing the trial interval unit for this product price
    # point, either month or day
    # @return [IntervalUnit]
    attr_accessor :trial_interval_unit

    # A string representing the trial interval unit for this product price
    # point, either month or day
    # @return [String]
    attr_accessor :trial_type

    # reserved for future use
    # @return [TrueClass | FalseClass]
    attr_accessor :introductory_offer

    # The product price point initial charge, in integer cents
    # @return [Integer]
    attr_accessor :initial_charge_in_cents

    # The product price point initial charge, in integer cents
    # @return [TrueClass | FalseClass]
    attr_accessor :initial_charge_after_trial

    # The numerical expiration interval. i.e. an expiration_interval of ‘30’
    # coupled with an expiration_interval_unit of day would mean this product
    # price point would expire every 30 days
    # @return [Integer]
    attr_accessor :expiration_interval

    # A string representing the expiration interval unit for this product price
    # point, either month or day
    # @return [IntervalUnit]
    attr_accessor :expiration_interval_unit

    # The product id this price point belongs to
    # @return [Integer]
    attr_accessor :product_id

    # Timestamp indicating when this price point was archived
    # @return [DateTime]
    attr_accessor :archived_at

    # Timestamp indicating when this price point was created
    # @return [DateTime]
    attr_accessor :created_at

    # Timestamp indicating when this price point was last updated
    # @return [DateTime]
    attr_accessor :updated_at

    # Whether or not to use the site's exchange rate or define your own pricing
    # when your site has multiple currencies defined.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # The type of price point
    # @return [PricePointType]
    attr_accessor :type

    # Whether or not the price point includes tax
    # @return [TrueClass | FalseClass]
    attr_accessor :tax_included

    # The subscription id this price point belongs to
    # @return [Integer]
    attr_accessor :subscription_id

    # An array of currency pricing data is available when multiple currencies
    # are defined for the site. It varies based on the use_site_exchange_rate
    # setting for the price point. This parameter is present only in the
    # response of read endpoints, after including the appropriate query
    # parameter.
    # @return [Array[CurrencyPrice]]
    attr_accessor :currency_prices

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['price_in_cents'] = 'price_in_cents'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash['trial_price_in_cents'] = 'trial_price_in_cents'
      @_hash['trial_interval'] = 'trial_interval'
      @_hash['trial_interval_unit'] = 'trial_interval_unit'
      @_hash['trial_type'] = 'trial_type'
      @_hash['introductory_offer'] = 'introductory_offer'
      @_hash['initial_charge_in_cents'] = 'initial_charge_in_cents'
      @_hash['initial_charge_after_trial'] = 'initial_charge_after_trial'
      @_hash['expiration_interval'] = 'expiration_interval'
      @_hash['expiration_interval_unit'] = 'expiration_interval_unit'
      @_hash['product_id'] = 'product_id'
      @_hash['archived_at'] = 'archived_at'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash['type'] = 'type'
      @_hash['tax_included'] = 'tax_included'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['currency_prices'] = 'currency_prices'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        handle
        price_in_cents
        interval
        interval_unit
        trial_price_in_cents
        trial_interval
        trial_interval_unit
        trial_type
        introductory_offer
        initial_charge_in_cents
        initial_charge_after_trial
        expiration_interval
        expiration_interval_unit
        product_id
        archived_at
        created_at
        updated_at
        use_site_exchange_rate
        type
        tax_included
        subscription_id
        currency_prices
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        archived_at
        subscription_id
      ]
    end

    def initialize(id = SKIP,
                   name = SKIP,
                   handle = SKIP,
                   price_in_cents = SKIP,
                   interval = SKIP,
                   interval_unit = SKIP,
                   trial_price_in_cents = SKIP,
                   trial_interval = SKIP,
                   trial_interval_unit = SKIP,
                   trial_type = SKIP,
                   introductory_offer = SKIP,
                   initial_charge_in_cents = SKIP,
                   initial_charge_after_trial = SKIP,
                   expiration_interval = SKIP,
                   expiration_interval_unit = SKIP,
                   product_id = SKIP,
                   archived_at = SKIP,
                   created_at = SKIP,
                   updated_at = SKIP,
                   use_site_exchange_rate = SKIP,
                   type = SKIP,
                   tax_included = SKIP,
                   subscription_id = SKIP,
                   currency_prices = SKIP)
      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @handle = handle unless handle == SKIP
      @price_in_cents = price_in_cents unless price_in_cents == SKIP
      @interval = interval unless interval == SKIP
      @interval_unit = interval_unit unless interval_unit == SKIP
      @trial_price_in_cents = trial_price_in_cents unless trial_price_in_cents == SKIP
      @trial_interval = trial_interval unless trial_interval == SKIP
      @trial_interval_unit = trial_interval_unit unless trial_interval_unit == SKIP
      @trial_type = trial_type unless trial_type == SKIP
      @introductory_offer = introductory_offer unless introductory_offer == SKIP
      @initial_charge_in_cents = initial_charge_in_cents unless initial_charge_in_cents == SKIP
      unless initial_charge_after_trial == SKIP
        @initial_charge_after_trial =
          initial_charge_after_trial
      end
      @expiration_interval = expiration_interval unless expiration_interval == SKIP
      @expiration_interval_unit = expiration_interval_unit unless expiration_interval_unit == SKIP
      @product_id = product_id unless product_id == SKIP
      @archived_at = archived_at unless archived_at == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP
      @type = type unless type == SKIP
      @tax_included = tax_included unless tax_included == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @currency_prices = currency_prices unless currency_prices == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      price_in_cents =
        hash.key?('price_in_cents') ? hash['price_in_cents'] : SKIP
      interval = hash.key?('interval') ? hash['interval'] : SKIP
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : SKIP
      trial_price_in_cents =
        hash.key?('trial_price_in_cents') ? hash['trial_price_in_cents'] : SKIP
      trial_interval =
        hash.key?('trial_interval') ? hash['trial_interval'] : SKIP
      trial_interval_unit =
        hash.key?('trial_interval_unit') ? hash['trial_interval_unit'] : SKIP
      trial_type = hash.key?('trial_type') ? hash['trial_type'] : SKIP
      introductory_offer =
        hash.key?('introductory_offer') ? hash['introductory_offer'] : SKIP
      initial_charge_in_cents =
        hash.key?('initial_charge_in_cents') ? hash['initial_charge_in_cents'] : SKIP
      initial_charge_after_trial =
        hash.key?('initial_charge_after_trial') ? hash['initial_charge_after_trial'] : SKIP
      expiration_interval =
        hash.key?('expiration_interval') ? hash['expiration_interval'] : SKIP
      expiration_interval_unit =
        hash.key?('expiration_interval_unit') ? hash['expiration_interval_unit'] : SKIP
      product_id = hash.key?('product_id') ? hash['product_id'] : SKIP
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
      use_site_exchange_rate =
        hash.key?('use_site_exchange_rate') ? hash['use_site_exchange_rate'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      tax_included = hash.key?('tax_included') ? hash['tax_included'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      # Parameter is an array, so we need to iterate through it
      currency_prices = nil
      unless hash['currency_prices'].nil?
        currency_prices = []
        hash['currency_prices'].each do |structure|
          currency_prices << (CurrencyPrice.from_hash(structure) if structure)
        end
      end

      currency_prices = SKIP unless hash.key?('currency_prices')

      # Create object from extracted values.
      ProductPricePoint.new(id,
                            name,
                            handle,
                            price_in_cents,
                            interval,
                            interval_unit,
                            trial_price_in_cents,
                            trial_interval,
                            trial_interval_unit,
                            trial_type,
                            introductory_offer,
                            initial_charge_in_cents,
                            initial_charge_after_trial,
                            expiration_interval,
                            expiration_interval_unit,
                            product_id,
                            archived_at,
                            created_at,
                            updated_at,
                            use_site_exchange_rate,
                            type,
                            tax_included,
                            subscription_id,
                            currency_prices)
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
