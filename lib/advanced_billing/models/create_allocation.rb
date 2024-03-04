# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateAllocation Model.
  class CreateAllocation < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The allocated quantity to which to set the line-items allocated quantity.
    # By default, this is an integer. If decimal allocations are enabled for the
    # component, it will be a decimal number. For On/Off components, use 1for on
    # and 0 for off.
    # @return [Float]
    attr_accessor :quantity

    # (required for the multiple allocations endpoint) The id associated with
    # the component for which the allocation is being made
    # @return [Integer]
    attr_accessor :component_id

    # A memo to record along with the allocation
    # @return [String]
    attr_accessor :memo

    # The scheme used if the proration is a downgrade. Defaults to the site
    # setting if one is not provided.
    # @return [String]
    attr_accessor :proration_downgrade_scheme

    # The scheme used if the proration is an upgrade. Defaults to the site
    # setting if one is not provided.
    # @return [String]
    attr_accessor :proration_upgrade_scheme

    # If the change in cost is an upgrade, this determines if the charge should
    # accrue to the next renewal or if capture should be attempted immediately.
    # Defaults to the site setting if one is not provided.
    # @return [TrueClass | FalseClass]
    attr_accessor :accrue_charge

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [CreditType]
    attr_accessor :downgrade_credit

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [CreditType]
    attr_accessor :upgrade_charge

    # If set to true, if the immediate component payment fails, initiate dunning
    # for the subscription. 
    # Otherwise, leave the charges on the subscription to pay for at renewal.
    # Defaults to false.
    # @return [TrueClass | FalseClass]
    attr_accessor :initiate_dunning

    # Price point that the allocation should be charged at. Accepts either the
    # price point's id (integer) or handle (string). When not specified, the
    # default price point will be used.
    # @return [Object]
    attr_accessor :price_point_id

    # This attribute is particularly useful when you need to align billing
    # events for different components on distinct schedules within a
    # subscription. Please note this only works for site with Multifrequency
    # enabled
    # @return [BillingSchedule]
    attr_accessor :billing_schedule

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['quantity'] = 'quantity'
      @_hash['component_id'] = 'component_id'
      @_hash['memo'] = 'memo'
      @_hash['proration_downgrade_scheme'] = 'proration_downgrade_scheme'
      @_hash['proration_upgrade_scheme'] = 'proration_upgrade_scheme'
      @_hash['accrue_charge'] = 'accrue_charge'
      @_hash['downgrade_credit'] = 'downgrade_credit'
      @_hash['upgrade_charge'] = 'upgrade_charge'
      @_hash['initiate_dunning'] = 'initiate_dunning'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['billing_schedule'] = 'billing_schedule'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        component_id
        memo
        proration_downgrade_scheme
        proration_upgrade_scheme
        accrue_charge
        downgrade_credit
        upgrade_charge
        initiate_dunning
        price_point_id
        billing_schedule
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        downgrade_credit
        upgrade_charge
        price_point_id
      ]
    end

    def initialize(quantity = nil,
                   component_id = SKIP,
                   memo = SKIP,
                   proration_downgrade_scheme = SKIP,
                   proration_upgrade_scheme = SKIP,
                   accrue_charge = SKIP,
                   downgrade_credit = SKIP,
                   upgrade_charge = SKIP,
                   initiate_dunning = SKIP,
                   price_point_id = SKIP,
                   billing_schedule = SKIP,
                   additional_properties = {})
      @quantity = quantity
      @component_id = component_id unless component_id == SKIP
      @memo = memo unless memo == SKIP
      unless proration_downgrade_scheme == SKIP
        @proration_downgrade_scheme =
          proration_downgrade_scheme
      end
      @proration_upgrade_scheme = proration_upgrade_scheme unless proration_upgrade_scheme == SKIP
      @accrue_charge = accrue_charge unless accrue_charge == SKIP
      @downgrade_credit = downgrade_credit unless downgrade_credit == SKIP
      @upgrade_charge = upgrade_charge unless upgrade_charge == SKIP
      @initiate_dunning = initiate_dunning unless initiate_dunning == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @billing_schedule = billing_schedule unless billing_schedule == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      quantity = hash.key?('quantity') ? hash['quantity'] : nil
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      proration_downgrade_scheme =
        hash.key?('proration_downgrade_scheme') ? hash['proration_downgrade_scheme'] : SKIP
      proration_upgrade_scheme =
        hash.key?('proration_upgrade_scheme') ? hash['proration_upgrade_scheme'] : SKIP
      accrue_charge = hash.key?('accrue_charge') ? hash['accrue_charge'] : SKIP
      downgrade_credit =
        hash.key?('downgrade_credit') ? hash['downgrade_credit'] : SKIP
      upgrade_charge =
        hash.key?('upgrade_charge') ? hash['upgrade_charge'] : SKIP
      initiate_dunning =
        hash.key?('initiate_dunning') ? hash['initiate_dunning'] : SKIP
      price_point_id = hash.key?('price_point_id') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateAllocationPricePointId), hash['price_point_id']
      ) : SKIP
      billing_schedule = BillingSchedule.from_hash(hash['billing_schedule']) if
        hash['billing_schedule']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      CreateAllocation.new(quantity,
                           component_id,
                           memo,
                           proration_downgrade_scheme,
                           proration_upgrade_scheme,
                           accrue_charge,
                           downgrade_credit,
                           upgrade_charge,
                           initiate_dunning,
                           price_point_id,
                           billing_schedule,
                           hash)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateAllocation | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.quantity,
                                     ->(val) { val.instance_of? Float })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['quantity'],
                            ->(val) { val.instance_of? Float })
    end
  end
end
