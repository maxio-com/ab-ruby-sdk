# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateProductPricePoint Model.
  class CreateProductPricePoint < BaseModel
    SKIP = Object.new
    private_constant :SKIP

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

    # The numerical trial interval. i.e. an interval of ‘30’ coupled with a
    # trial_interval_unit of day would mean this product price point trial would
    # last 30 days.
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

    # The product price point initial charge, in integer cents
    # @return [Integer]
    attr_accessor :initial_charge_in_cents

    # The product price point initial charge, in integer cents
    # @return [TrueClass | FalseClass]
    attr_accessor :initial_charge_after_trial

    # The numerical expiration interval. i.e. an expiration_interval of ‘30’
    # coupled with an expiration_interval_unit of day would mean this product
    # price point would expire after 30 days.
    # @return [Integer]
    attr_accessor :expiration_interval

    # A string representing the expiration interval unit for this product price
    # point, either month or day
    # @return [IntervalUnit]
    attr_accessor :expiration_interval_unit

    # Whether or not to use the site's exchange rate or define your own pricing
    # when your site has multiple currencies defined.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['price_in_cents'] = 'price_in_cents'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash['trial_price_in_cents'] = 'trial_price_in_cents'
      @_hash['trial_interval'] = 'trial_interval'
      @_hash['trial_interval_unit'] = 'trial_interval_unit'
      @_hash['trial_type'] = 'trial_type'
      @_hash['initial_charge_in_cents'] = 'initial_charge_in_cents'
      @_hash['initial_charge_after_trial'] = 'initial_charge_after_trial'
      @_hash['expiration_interval'] = 'expiration_interval'
      @_hash['expiration_interval_unit'] = 'expiration_interval_unit'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        handle
        trial_price_in_cents
        trial_interval
        trial_interval_unit
        trial_type
        initial_charge_in_cents
        initial_charge_after_trial
        expiration_interval
        expiration_interval_unit
        use_site_exchange_rate
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = nil,
                   price_in_cents = nil,
                   interval = nil,
                   interval_unit = nil,
                   handle = SKIP,
                   trial_price_in_cents = SKIP,
                   trial_interval = SKIP,
                   trial_interval_unit = SKIP,
                   trial_type = SKIP,
                   initial_charge_in_cents = SKIP,
                   initial_charge_after_trial = SKIP,
                   expiration_interval = SKIP,
                   expiration_interval_unit = SKIP,
                   use_site_exchange_rate = true,
                   additional_properties = {})
      @name = name
      @handle = handle unless handle == SKIP
      @price_in_cents = price_in_cents
      @interval = interval
      @interval_unit = interval_unit
      @trial_price_in_cents = trial_price_in_cents unless trial_price_in_cents == SKIP
      @trial_interval = trial_interval unless trial_interval == SKIP
      @trial_interval_unit = trial_interval_unit unless trial_interval_unit == SKIP
      @trial_type = trial_type unless trial_type == SKIP
      @initial_charge_in_cents = initial_charge_in_cents unless initial_charge_in_cents == SKIP
      unless initial_charge_after_trial == SKIP
        @initial_charge_after_trial =
          initial_charge_after_trial
      end
      @expiration_interval = expiration_interval unless expiration_interval == SKIP
      @expiration_interval_unit = expiration_interval_unit unless expiration_interval_unit == SKIP
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP

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
      price_in_cents =
        hash.key?('price_in_cents') ? hash['price_in_cents'] : nil
      interval = hash.key?('interval') ? hash['interval'] : nil
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : nil
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      trial_price_in_cents =
        hash.key?('trial_price_in_cents') ? hash['trial_price_in_cents'] : SKIP
      trial_interval =
        hash.key?('trial_interval') ? hash['trial_interval'] : SKIP
      trial_interval_unit =
        hash.key?('trial_interval_unit') ? hash['trial_interval_unit'] : SKIP
      trial_type = hash.key?('trial_type') ? hash['trial_type'] : SKIP
      initial_charge_in_cents =
        hash.key?('initial_charge_in_cents') ? hash['initial_charge_in_cents'] : SKIP
      initial_charge_after_trial =
        hash.key?('initial_charge_after_trial') ? hash['initial_charge_after_trial'] : SKIP
      expiration_interval =
        hash.key?('expiration_interval') ? hash['expiration_interval'] : SKIP
      expiration_interval_unit =
        hash.key?('expiration_interval_unit') ? hash['expiration_interval_unit'] : SKIP
      use_site_exchange_rate = hash['use_site_exchange_rate'] ||= true

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      CreateProductPricePoint.new(name,
                                  price_in_cents,
                                  interval,
                                  interval_unit,
                                  handle,
                                  trial_price_in_cents,
                                  trial_interval,
                                  trial_interval_unit,
                                  trial_type,
                                  initial_charge_in_cents,
                                  initial_charge_after_trial,
                                  expiration_interval,
                                  expiration_interval_unit,
                                  use_site_exchange_rate,
                                  hash)
    end
  end
end
