# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # CreateAllocation Model.
  class CreateAllocation < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The allocated quantity to which to set the line-items allocated quantity.
    # By default, this is an integer. If decimal allocations are enabled for the
    # component, it will be a decimal number. For On/Off components, use 1 for
    # on and 0 for off.
    # @return [Float]
    attr_accessor :quantity

    # Decimal representation of the allocated quantity. Only valid when decimal
    # allocations are enabled for the component.
    # @return [String]
    attr_accessor :decimal_quantity

    # The quantity that was in effect before this allocation. Responses always
    # include this value; it may be supplied on preview requests to ensure the
    # expected change is evaluated.
    # @return [Float]
    attr_accessor :previous_quantity

    # Decimal representation of `previous_quantity`. Only valid when decimal
    # allocations are enabled for the component.
    # @return [String]
    attr_accessor :decimal_previous_quantity

    # (required for the multiple allocations endpoint) The id associated with
    # the component for which the allocation is being made.
    # @return [Integer]
    attr_accessor :component_id

    # A memo to record along with the allocation.
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

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided. Values are:
    # `full` -  A full price credit is added for the amount owed. 
    # `prorated` - A prorated credit is added for the amount owed. 
    # `none` - No charge is added.
    # @return [DowngradeCreditCreditType]
    attr_accessor :downgrade_credit

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided. Values are:
    # `full` - A charge is added for the full price of the component. 
    # `prorated` - A charge is added for the prorated price of the component
    # change.
    # `none` - No charge is added.
    # @return [UpgradeChargeCreditType]
    attr_accessor :upgrade_charge

    # "If the change in cost is an upgrade, this determines if the charge should
    # accrue to the next renewal or if capture should be attempted immediately.
    # `true` - Attempt to charge the customer at the next renewal.      
    # `false` - Attempt to charge the customer right away. If it fails, the
    # charge will be accrued until the next renewal.
    # Defaults to the site setting if unspecified in the request.
    # @return [TrueClass | FalseClass]
    attr_accessor :accrue_charge

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

    # Billing schedule settings for component allocations or usages on
    # multi-frequency subscriptions. Use this to start a component's billing
    # period on a custom date instead of aligning with the product charge
    # schedule.
    # @return [BillingSchedule]
    attr_accessor :billing_schedule

    # Create or update custom pricing unique to the subscription. Used in place
    # of `price_point_id`.
    # @return [ComponentCustomPrice]
    attr_accessor :custom_price

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['quantity'] = 'quantity'
      @_hash['decimal_quantity'] = 'decimal_quantity'
      @_hash['previous_quantity'] = 'previous_quantity'
      @_hash['decimal_previous_quantity'] = 'decimal_previous_quantity'
      @_hash['component_id'] = 'component_id'
      @_hash['memo'] = 'memo'
      @_hash['proration_downgrade_scheme'] = 'proration_downgrade_scheme'
      @_hash['proration_upgrade_scheme'] = 'proration_upgrade_scheme'
      @_hash['downgrade_credit'] = 'downgrade_credit'
      @_hash['upgrade_charge'] = 'upgrade_charge'
      @_hash['accrue_charge'] = 'accrue_charge'
      @_hash['initiate_dunning'] = 'initiate_dunning'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['billing_schedule'] = 'billing_schedule'
      @_hash['custom_price'] = 'custom_price'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        decimal_quantity
        previous_quantity
        decimal_previous_quantity
        component_id
        memo
        proration_downgrade_scheme
        proration_upgrade_scheme
        downgrade_credit
        upgrade_charge
        accrue_charge
        initiate_dunning
        price_point_id
        billing_schedule
        custom_price
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

    def initialize(quantity:, decimal_quantity: SKIP, previous_quantity: SKIP,
                   decimal_previous_quantity: SKIP, component_id: SKIP,
                   memo: SKIP, proration_downgrade_scheme: SKIP,
                   proration_upgrade_scheme: SKIP, downgrade_credit: SKIP,
                   upgrade_charge: SKIP, accrue_charge: SKIP,
                   initiate_dunning: SKIP, price_point_id: SKIP,
                   billing_schedule: SKIP, custom_price: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @quantity = quantity
      @decimal_quantity = decimal_quantity unless decimal_quantity == SKIP
      @previous_quantity = previous_quantity unless previous_quantity == SKIP
      unless decimal_previous_quantity == SKIP
        @decimal_previous_quantity =
          decimal_previous_quantity
      end
      @component_id = component_id unless component_id == SKIP
      @memo = memo unless memo == SKIP
      unless proration_downgrade_scheme == SKIP
        @proration_downgrade_scheme =
          proration_downgrade_scheme
      end
      @proration_upgrade_scheme = proration_upgrade_scheme unless proration_upgrade_scheme == SKIP
      @downgrade_credit = downgrade_credit unless downgrade_credit == SKIP
      @upgrade_charge = upgrade_charge unless upgrade_charge == SKIP
      @accrue_charge = accrue_charge unless accrue_charge == SKIP
      @initiate_dunning = initiate_dunning unless initiate_dunning == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @billing_schedule = billing_schedule unless billing_schedule == SKIP
      @custom_price = custom_price unless custom_price == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      quantity = hash.key?('quantity') ? hash['quantity'] : nil
      decimal_quantity =
        hash.key?('decimal_quantity') ? hash['decimal_quantity'] : SKIP
      previous_quantity =
        hash.key?('previous_quantity') ? hash['previous_quantity'] : SKIP
      decimal_previous_quantity =
        hash.key?('decimal_previous_quantity') ? hash['decimal_previous_quantity'] : SKIP
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      memo = hash.key?('memo') ? hash['memo'] : SKIP
      proration_downgrade_scheme =
        hash.key?('proration_downgrade_scheme') ? hash['proration_downgrade_scheme'] : SKIP
      proration_upgrade_scheme =
        hash.key?('proration_upgrade_scheme') ? hash['proration_upgrade_scheme'] : SKIP
      downgrade_credit =
        hash.key?('downgrade_credit') ? hash['downgrade_credit'] : SKIP
      upgrade_charge =
        hash.key?('upgrade_charge') ? hash['upgrade_charge'] : SKIP
      accrue_charge = hash.key?('accrue_charge') ? hash['accrue_charge'] : SKIP
      initiate_dunning =
        hash.key?('initiate_dunning') ? hash['initiate_dunning'] : SKIP
      price_point_id = hash.key?('price_point_id') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:CreateAllocationPricePointId), hash['price_point_id']
      ) : SKIP
      billing_schedule = BillingSchedule.from_hash(hash['billing_schedule']) if
        hash['billing_schedule']
      custom_price = ComponentCustomPrice.from_hash(hash['custom_price']) if hash['custom_price']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateAllocation.new(quantity: quantity,
                           decimal_quantity: decimal_quantity,
                           previous_quantity: previous_quantity,
                           decimal_previous_quantity: decimal_previous_quantity,
                           component_id: component_id,
                           memo: memo,
                           proration_downgrade_scheme: proration_downgrade_scheme,
                           proration_upgrade_scheme: proration_upgrade_scheme,
                           downgrade_credit: downgrade_credit,
                           upgrade_charge: upgrade_charge,
                           accrue_charge: accrue_charge,
                           initiate_dunning: initiate_dunning,
                           price_point_id: price_point_id,
                           billing_schedule: billing_schedule,
                           custom_price: custom_price,
                           additional_properties: additional_properties)
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

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} quantity: #{@quantity}, decimal_quantity: #{@decimal_quantity},"\
      " previous_quantity: #{@previous_quantity}, decimal_previous_quantity:"\
      " #{@decimal_previous_quantity}, component_id: #{@component_id}, memo: #{@memo},"\
      " proration_downgrade_scheme: #{@proration_downgrade_scheme}, proration_upgrade_scheme:"\
      " #{@proration_upgrade_scheme}, downgrade_credit: #{@downgrade_credit}, upgrade_charge:"\
      " #{@upgrade_charge}, accrue_charge: #{@accrue_charge}, initiate_dunning:"\
      " #{@initiate_dunning}, price_point_id: #{@price_point_id}, billing_schedule:"\
      " #{@billing_schedule}, custom_price: #{@custom_price}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} quantity: #{@quantity.inspect}, decimal_quantity:"\
      " #{@decimal_quantity.inspect}, previous_quantity: #{@previous_quantity.inspect},"\
      " decimal_previous_quantity: #{@decimal_previous_quantity.inspect}, component_id:"\
      " #{@component_id.inspect}, memo: #{@memo.inspect}, proration_downgrade_scheme:"\
      " #{@proration_downgrade_scheme.inspect}, proration_upgrade_scheme:"\
      " #{@proration_upgrade_scheme.inspect}, downgrade_credit: #{@downgrade_credit.inspect},"\
      " upgrade_charge: #{@upgrade_charge.inspect}, accrue_charge: #{@accrue_charge.inspect},"\
      " initiate_dunning: #{@initiate_dunning.inspect}, price_point_id:"\
      " #{@price_point_id.inspect}, billing_schedule: #{@billing_schedule.inspect}, custom_price:"\
      " #{@custom_price.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
