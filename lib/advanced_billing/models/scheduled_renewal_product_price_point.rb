# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Custom pricing for a product within a scheduled renewal.
  class ScheduledRenewalProductPricePoint < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # (Optional)
    # @return [String]
    attr_accessor :name

    # (Optional)
    # @return [String]
    attr_accessor :handle

    # Required if using `custom_price` attribute.
    # @return [Object]
    attr_accessor :price_in_cents

    # Required if using `custom_price` attribute.
    # @return [Object]
    attr_accessor :interval

    # Required if using `custom_price` attribute.
    # @return [IntervalUnit]
    attr_accessor :interval_unit

    # (Optional)
    # @return [TrueClass | FalseClass]
    attr_accessor :tax_included

    # The product price point initial charge, in integer cents.
    # @return [Integer]
    attr_accessor :initial_charge_in_cents

    # The numerical expiration interval. e.g., an expiration_interval of ‘30’
    # coupled with an expiration_interval_unit of day would mean this product
    # price point would expire after 30 days.
    # @return [Integer]
    attr_accessor :expiration_interval

    # A string representing the expiration interval unit for this product price
    # point, either month, day or never
    # @return [ExpirationIntervalUnit]
    attr_accessor :expiration_interval_unit

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['price_in_cents'] = 'price_in_cents'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash['tax_included'] = 'tax_included'
      @_hash['initial_charge_in_cents'] = 'initial_charge_in_cents'
      @_hash['expiration_interval'] = 'expiration_interval'
      @_hash['expiration_interval_unit'] = 'expiration_interval_unit'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        handle
        tax_included
        initial_charge_in_cents
        expiration_interval
        expiration_interval_unit
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        interval_unit
        expiration_interval_unit
      ]
    end

    def initialize(price_in_cents:, interval:, interval_unit:, name: SKIP,
                   handle: SKIP, tax_included: SKIP,
                   initial_charge_in_cents: SKIP, expiration_interval: SKIP,
                   expiration_interval_unit: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @name = name unless name == SKIP
      @handle = handle unless handle == SKIP
      @price_in_cents = price_in_cents
      @interval = interval
      @interval_unit = interval_unit
      @tax_included = tax_included unless tax_included == SKIP
      @initial_charge_in_cents = initial_charge_in_cents unless initial_charge_in_cents == SKIP
      @expiration_interval = expiration_interval unless expiration_interval == SKIP
      @expiration_interval_unit = expiration_interval_unit unless expiration_interval_unit == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      price_in_cents = hash.key?('price_in_cents') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:ScheduledRenewalProductPricePointPriceInCents), hash['price_in_cents']
      ) : nil
      interval = hash.key?('interval') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:ScheduledRenewalProductPricePointInterval), hash['interval']
      ) : nil
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : nil
      name = hash.key?('name') ? hash['name'] : SKIP
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      tax_included = hash.key?('tax_included') ? hash['tax_included'] : SKIP
      initial_charge_in_cents =
        hash.key?('initial_charge_in_cents') ? hash['initial_charge_in_cents'] : SKIP
      expiration_interval =
        hash.key?('expiration_interval') ? hash['expiration_interval'] : SKIP
      expiration_interval_unit =
        hash.key?('expiration_interval_unit') ? hash['expiration_interval_unit'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ScheduledRenewalProductPricePoint.new(price_in_cents: price_in_cents,
                                            interval: interval,
                                            interval_unit: interval_unit,
                                            name: name,
                                            handle: handle,
                                            tax_included: tax_included,
                                            initial_charge_in_cents: initial_charge_in_cents,
                                            expiration_interval: expiration_interval,
                                            expiration_interval_unit: expiration_interval_unit,
                                            additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [ScheduledRenewalProductPricePoint | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          UnionTypeLookUp.get(:ScheduledRenewalProductPricePointPriceInCents)
                         .validate(value.price_in_cents) and
            UnionTypeLookUp.get(:ScheduledRenewalProductPricePointInterval)
                           .validate(value.interval) and
            APIHelper.valid_type?(value.interval_unit,
                                  ->(val) { IntervalUnit.validate(val) })
        )
      end

      return false unless value.instance_of? Hash

      (
        UnionTypeLookUp.get(:ScheduledRenewalProductPricePointPriceInCents)
                       .validate(value['price_in_cents']) and
          UnionTypeLookUp.get(:ScheduledRenewalProductPricePointInterval)
                         .validate(value['interval']) and
          APIHelper.valid_type?(value['interval_unit'],
                                ->(val) { IntervalUnit.validate(val) })
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, handle: #{@handle}, price_in_cents: #{@price_in_cents},"\
      " interval: #{@interval}, interval_unit: #{@interval_unit}, tax_included: #{@tax_included},"\
      " initial_charge_in_cents: #{@initial_charge_in_cents}, expiration_interval:"\
      " #{@expiration_interval}, expiration_interval_unit: #{@expiration_interval_unit},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, handle: #{@handle.inspect}, price_in_cents:"\
      " #{@price_in_cents.inspect}, interval: #{@interval.inspect}, interval_unit:"\
      " #{@interval_unit.inspect}, tax_included: #{@tax_included.inspect},"\
      " initial_charge_in_cents: #{@initial_charge_in_cents.inspect}, expiration_interval:"\
      " #{@expiration_interval.inspect}, expiration_interval_unit:"\
      " #{@expiration_interval_unit.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
