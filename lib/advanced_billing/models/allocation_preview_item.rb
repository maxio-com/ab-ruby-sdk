# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # AllocationPreviewItem Model.
  class AllocationPreviewItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :component_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :subscription_id

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :quantity

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :previous_quantity

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :memo

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :timestamp

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :proration_upgrade_scheme

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :proration_downgrade_scheme

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :accrue_charge

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [CreditType]
    attr_accessor :upgrade_charge

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [CreditType]
    attr_accessor :downgrade_credit

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [Integer]
    attr_accessor :price_point_id

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
    # @return [Integer]
    attr_accessor :previous_price_point_id

    # A string representing the interval unit for this component price point,
    # either month or day. This property is only available for sites with
    # Multifrequency enabled.
    # @return [String]
    attr_accessor :price_point_handle

    # A string representing the interval unit for this component price point,
    # either month or day. This property is only available for sites with
    # Multifrequency enabled.
    # @return [String]
    attr_accessor :price_point_name

    # A string representing the interval unit for this component price point,
    # either month or day. This property is only available for sites with
    # Multifrequency enabled.
    # @return [String]
    attr_accessor :component_handle

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['component_id'] = 'component_id'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['quantity'] = 'quantity'
      @_hash['previous_quantity'] = 'previous_quantity'
      @_hash['memo'] = 'memo'
      @_hash['timestamp'] = 'timestamp'
      @_hash['proration_upgrade_scheme'] = 'proration_upgrade_scheme'
      @_hash['proration_downgrade_scheme'] = 'proration_downgrade_scheme'
      @_hash['accrue_charge'] = 'accrue_charge'
      @_hash['upgrade_charge'] = 'upgrade_charge'
      @_hash['downgrade_credit'] = 'downgrade_credit'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash['previous_price_point_id'] = 'previous_price_point_id'
      @_hash['price_point_handle'] = 'price_point_handle'
      @_hash['price_point_name'] = 'price_point_name'
      @_hash['component_handle'] = 'component_handle'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        component_id
        subscription_id
        quantity
        previous_quantity
        memo
        timestamp
        proration_upgrade_scheme
        proration_downgrade_scheme
        accrue_charge
        upgrade_charge
        downgrade_credit
        price_point_id
        interval
        interval_unit
        previous_price_point_id
        price_point_handle
        price_point_name
        component_handle
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        memo
        timestamp
        upgrade_charge
        downgrade_credit
        interval_unit
        component_handle
      ]
    end

    def initialize(component_id: SKIP, subscription_id: SKIP, quantity: SKIP,
                   previous_quantity: SKIP, memo: SKIP, timestamp: SKIP,
                   proration_upgrade_scheme: SKIP,
                   proration_downgrade_scheme: SKIP, accrue_charge: SKIP,
                   upgrade_charge: SKIP, downgrade_credit: SKIP,
                   price_point_id: SKIP, interval: SKIP, interval_unit: SKIP,
                   previous_price_point_id: SKIP, price_point_handle: SKIP,
                   price_point_name: SKIP, component_handle: SKIP,
                   additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @component_id = component_id unless component_id == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @quantity = quantity unless quantity == SKIP
      @previous_quantity = previous_quantity unless previous_quantity == SKIP
      @memo = memo unless memo == SKIP
      @timestamp = timestamp unless timestamp == SKIP
      @proration_upgrade_scheme = proration_upgrade_scheme unless proration_upgrade_scheme == SKIP
      unless proration_downgrade_scheme == SKIP
        @proration_downgrade_scheme =
          proration_downgrade_scheme
      end
      @accrue_charge = accrue_charge unless accrue_charge == SKIP
      @upgrade_charge = upgrade_charge unless upgrade_charge == SKIP
      @downgrade_credit = downgrade_credit unless downgrade_credit == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @interval = interval unless interval == SKIP
      @interval_unit = interval_unit unless interval_unit == SKIP
      @previous_price_point_id = previous_price_point_id unless previous_price_point_id == SKIP
      @price_point_handle = price_point_handle unless price_point_handle == SKIP
      @price_point_name = price_point_name unless price_point_name == SKIP
      @component_handle = component_handle unless component_handle == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      quantity = hash.key?('quantity') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:AllocationPreviewItemQuantity), hash['quantity']
      ) : SKIP
      previous_quantity = hash.key?('previous_quantity') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:AllocationPreviewItemPreviousQuantity), hash['previous_quantity']
      ) : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      timestamp = hash.key?('timestamp') ? hash['timestamp'] : SKIP
      proration_upgrade_scheme =
        hash.key?('proration_upgrade_scheme') ? hash['proration_upgrade_scheme'] : SKIP
      proration_downgrade_scheme =
        hash.key?('proration_downgrade_scheme') ? hash['proration_downgrade_scheme'] : SKIP
      accrue_charge = hash.key?('accrue_charge') ? hash['accrue_charge'] : SKIP
      upgrade_charge =
        hash.key?('upgrade_charge') ? hash['upgrade_charge'] : SKIP
      downgrade_credit =
        hash.key?('downgrade_credit') ? hash['downgrade_credit'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      interval = hash.key?('interval') ? hash['interval'] : SKIP
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : SKIP
      previous_price_point_id =
        hash.key?('previous_price_point_id') ? hash['previous_price_point_id'] : SKIP
      price_point_handle =
        hash.key?('price_point_handle') ? hash['price_point_handle'] : SKIP
      price_point_name =
        hash.key?('price_point_name') ? hash['price_point_name'] : SKIP
      component_handle =
        hash.key?('component_handle') ? hash['component_handle'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      AllocationPreviewItem.new(component_id: component_id,
                                subscription_id: subscription_id,
                                quantity: quantity,
                                previous_quantity: previous_quantity,
                                memo: memo,
                                timestamp: timestamp,
                                proration_upgrade_scheme: proration_upgrade_scheme,
                                proration_downgrade_scheme: proration_downgrade_scheme,
                                accrue_charge: accrue_charge,
                                upgrade_charge: upgrade_charge,
                                downgrade_credit: downgrade_credit,
                                price_point_id: price_point_id,
                                interval: interval,
                                interval_unit: interval_unit,
                                previous_price_point_id: previous_price_point_id,
                                price_point_handle: price_point_handle,
                                price_point_name: price_point_name,
                                component_handle: component_handle,
                                additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [AllocationPreviewItem | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
