# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # SubscriptionComponent Model.
  class SubscriptionComponent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # A handle for the component type
    # @return [ComponentKind]
    attr_accessor :kind

    # A handle for the component type
    # @return [String]
    attr_accessor :unit_name

    # (for on/off components) indicates if the component is enabled for the
    # subscription
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # (for on/off components) indicates if the component is enabled for the
    # subscription
    # @return [Integer]
    attr_accessor :unit_balance

    # (for on/off components) indicates if the component is enabled for the
    # subscription
    # @return [String]
    attr_accessor :currency

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [Object]
    attr_accessor :allocated_quantity

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [PricingScheme]
    attr_accessor :pricing_scheme

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [Integer]
    attr_accessor :component_id

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [String]
    attr_accessor :component_handle

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [Integer]
    attr_accessor :subscription_id

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [TrueClass | FalseClass]
    attr_accessor :recurring

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
    # @return [DateTime]
    attr_accessor :archived_at

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [Integer]
    attr_accessor :price_point_id

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [String]
    attr_accessor :price_point_handle

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [PricePointType]
    attr_accessor :price_point_type

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [String]
    attr_accessor :price_point_name

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [Integer]
    attr_accessor :product_family_id

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [String]
    attr_accessor :product_family_handle

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [DateTime]
    attr_accessor :created_at

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [DateTime]
    attr_accessor :updated_at

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [String]
    attr_accessor :description

    # The type of credit to be created when upgrading/downgrading. Defaults to
    # the component and then site setting if one is not provided.
    # Available values: `full`, `prorated`, `none`.
    # @return [TrueClass | FalseClass]
    attr_accessor :allow_fractional_quantities

    # An optional object, will be returned if provided `include=subscription`
    # query param.
    # @return [SubscriptionComponentSubscription]
    attr_accessor :subscription

    # An optional object, will be returned if provided `include=subscription`
    # query param.
    # @return [Array[HistoricUsage]]
    attr_accessor :historic_usages

    # An optional object, will be returned if provided `include=subscription`
    # query param.
    # @return [TrueClass | FalseClass]
    attr_accessor :display_on_hosted_page

    # The numerical interval. i.e. an interval of '30' coupled with an
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

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['kind'] = 'kind'
      @_hash['unit_name'] = 'unit_name'
      @_hash['enabled'] = 'enabled'
      @_hash['unit_balance'] = 'unit_balance'
      @_hash['currency'] = 'currency'
      @_hash['allocated_quantity'] = 'allocated_quantity'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['component_id'] = 'component_id'
      @_hash['component_handle'] = 'component_handle'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['recurring'] = 'recurring'
      @_hash['upgrade_charge'] = 'upgrade_charge'
      @_hash['downgrade_credit'] = 'downgrade_credit'
      @_hash['archived_at'] = 'archived_at'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['price_point_handle'] = 'price_point_handle'
      @_hash['price_point_type'] = 'price_point_type'
      @_hash['price_point_name'] = 'price_point_name'
      @_hash['product_family_id'] = 'product_family_id'
      @_hash['product_family_handle'] = 'product_family_handle'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash['description'] = 'description'
      @_hash['allow_fractional_quantities'] = 'allow_fractional_quantities'
      @_hash['subscription'] = 'subscription'
      @_hash['historic_usages'] = 'historic_usages'
      @_hash['display_on_hosted_page'] = 'display_on_hosted_page'
      @_hash['interval'] = 'interval'
      @_hash['interval_unit'] = 'interval_unit'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        kind
        unit_name
        enabled
        unit_balance
        currency
        allocated_quantity
        pricing_scheme
        component_id
        component_handle
        subscription_id
        recurring
        upgrade_charge
        downgrade_credit
        archived_at
        price_point_id
        price_point_handle
        price_point_type
        price_point_name
        product_family_id
        product_family_handle
        created_at
        updated_at
        use_site_exchange_rate
        description
        allow_fractional_quantities
        subscription
        historic_usages
        display_on_hosted_page
        interval
        interval_unit
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        pricing_scheme
        component_handle
        upgrade_charge
        downgrade_credit
        archived_at
        price_point_id
        price_point_handle
        price_point_type
        price_point_name
        use_site_exchange_rate
        description
        interval_unit
      ]
    end

    def initialize(id: SKIP, name: SKIP, kind: SKIP, unit_name: SKIP,
                   enabled: SKIP, unit_balance: SKIP, currency: SKIP,
                   allocated_quantity: SKIP, pricing_scheme: SKIP,
                   component_id: SKIP, component_handle: SKIP,
                   subscription_id: SKIP, recurring: SKIP, upgrade_charge: SKIP,
                   downgrade_credit: SKIP, archived_at: SKIP,
                   price_point_id: SKIP, price_point_handle: SKIP,
                   price_point_type: SKIP, price_point_name: SKIP,
                   product_family_id: SKIP, product_family_handle: SKIP,
                   created_at: SKIP, updated_at: SKIP,
                   use_site_exchange_rate: SKIP, description: SKIP,
                   allow_fractional_quantities: SKIP, subscription: SKIP,
                   historic_usages: SKIP, display_on_hosted_page: SKIP,
                   interval: SKIP, interval_unit: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @kind = kind unless kind == SKIP
      @unit_name = unit_name unless unit_name == SKIP
      @enabled = enabled unless enabled == SKIP
      @unit_balance = unit_balance unless unit_balance == SKIP
      @currency = currency unless currency == SKIP
      @allocated_quantity = allocated_quantity unless allocated_quantity == SKIP
      @pricing_scheme = pricing_scheme unless pricing_scheme == SKIP
      @component_id = component_id unless component_id == SKIP
      @component_handle = component_handle unless component_handle == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @recurring = recurring unless recurring == SKIP
      @upgrade_charge = upgrade_charge unless upgrade_charge == SKIP
      @downgrade_credit = downgrade_credit unless downgrade_credit == SKIP
      @archived_at = archived_at unless archived_at == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @price_point_handle = price_point_handle unless price_point_handle == SKIP
      @price_point_type = price_point_type unless price_point_type == SKIP
      @price_point_name = price_point_name unless price_point_name == SKIP
      @product_family_id = product_family_id unless product_family_id == SKIP
      @product_family_handle = product_family_handle unless product_family_handle == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP
      @description = description unless description == SKIP
      unless allow_fractional_quantities == SKIP
        @allow_fractional_quantities =
          allow_fractional_quantities
      end
      @subscription = subscription unless subscription == SKIP
      @historic_usages = historic_usages unless historic_usages == SKIP
      @display_on_hosted_page = display_on_hosted_page unless display_on_hosted_page == SKIP
      @interval = interval unless interval == SKIP
      @interval_unit = interval_unit unless interval_unit == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      kind = hash.key?('kind') ? hash['kind'] : SKIP
      unit_name = hash.key?('unit_name') ? hash['unit_name'] : SKIP
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      unit_balance = hash.key?('unit_balance') ? hash['unit_balance'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      allocated_quantity = hash.key?('allocated_quantity') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionComponentAllocatedQuantity), hash['allocated_quantity']
      ) : SKIP
      pricing_scheme =
        hash.key?('pricing_scheme') ? hash['pricing_scheme'] : SKIP
      component_id = hash.key?('component_id') ? hash['component_id'] : SKIP
      component_handle =
        hash.key?('component_handle') ? hash['component_handle'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      recurring = hash.key?('recurring') ? hash['recurring'] : SKIP
      upgrade_charge =
        hash.key?('upgrade_charge') ? hash['upgrade_charge'] : SKIP
      downgrade_credit =
        hash.key?('downgrade_credit') ? hash['downgrade_credit'] : SKIP
      archived_at = if hash.key?('archived_at')
                      (DateTimeHelper.from_rfc3339(hash['archived_at']) if hash['archived_at'])
                    else
                      SKIP
                    end
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      price_point_handle =
        hash.key?('price_point_handle') ? hash['price_point_handle'] : SKIP
      price_point_type =
        hash.key?('price_point_type') ? hash['price_point_type'] : SKIP
      price_point_name =
        hash.key?('price_point_name') ? hash['price_point_name'] : SKIP
      product_family_id =
        hash.key?('product_family_id') ? hash['product_family_id'] : SKIP
      product_family_handle =
        hash.key?('product_family_handle') ? hash['product_family_handle'] : SKIP
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
      description = hash.key?('description') ? hash['description'] : SKIP
      allow_fractional_quantities =
        hash.key?('allow_fractional_quantities') ? hash['allow_fractional_quantities'] : SKIP
      subscription = SubscriptionComponentSubscription.from_hash(hash['subscription']) if
        hash['subscription']
      # Parameter is an array, so we need to iterate through it
      historic_usages = nil
      unless hash['historic_usages'].nil?
        historic_usages = []
        hash['historic_usages'].each do |structure|
          historic_usages << (HistoricUsage.from_hash(structure) if structure)
        end
      end

      historic_usages = SKIP unless hash.key?('historic_usages')
      display_on_hosted_page =
        hash.key?('display_on_hosted_page') ? hash['display_on_hosted_page'] : SKIP
      interval = hash.key?('interval') ? hash['interval'] : SKIP
      interval_unit = hash.key?('interval_unit') ? hash['interval_unit'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionComponent.new(id: id,
                                name: name,
                                kind: kind,
                                unit_name: unit_name,
                                enabled: enabled,
                                unit_balance: unit_balance,
                                currency: currency,
                                allocated_quantity: allocated_quantity,
                                pricing_scheme: pricing_scheme,
                                component_id: component_id,
                                component_handle: component_handle,
                                subscription_id: subscription_id,
                                recurring: recurring,
                                upgrade_charge: upgrade_charge,
                                downgrade_credit: downgrade_credit,
                                archived_at: archived_at,
                                price_point_id: price_point_id,
                                price_point_handle: price_point_handle,
                                price_point_type: price_point_type,
                                price_point_name: price_point_name,
                                product_family_id: product_family_id,
                                product_family_handle: product_family_handle,
                                created_at: created_at,
                                updated_at: updated_at,
                                use_site_exchange_rate: use_site_exchange_rate,
                                description: description,
                                allow_fractional_quantities: allow_fractional_quantities,
                                subscription: subscription,
                                historic_usages: historic_usages,
                                display_on_hosted_page: display_on_hosted_page,
                                interval: interval,
                                interval_unit: interval_unit,
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

    # Validates an instance of the object from a given value.
    # @param [SubscriptionComponent | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, name: #{@name}, kind: #{@kind}, unit_name: #{@unit_name},"\
      " enabled: #{@enabled}, unit_balance: #{@unit_balance}, currency: #{@currency},"\
      " allocated_quantity: #{@allocated_quantity}, pricing_scheme: #{@pricing_scheme},"\
      " component_id: #{@component_id}, component_handle: #{@component_handle}, subscription_id:"\
      " #{@subscription_id}, recurring: #{@recurring}, upgrade_charge: #{@upgrade_charge},"\
      " downgrade_credit: #{@downgrade_credit}, archived_at: #{@archived_at}, price_point_id:"\
      " #{@price_point_id}, price_point_handle: #{@price_point_handle}, price_point_type:"\
      " #{@price_point_type}, price_point_name: #{@price_point_name}, product_family_id:"\
      " #{@product_family_id}, product_family_handle: #{@product_family_handle}, created_at:"\
      " #{@created_at}, updated_at: #{@updated_at}, use_site_exchange_rate:"\
      " #{@use_site_exchange_rate}, description: #{@description}, allow_fractional_quantities:"\
      " #{@allow_fractional_quantities}, subscription: #{@subscription}, historic_usages:"\
      " #{@historic_usages}, display_on_hosted_page: #{@display_on_hosted_page}, interval:"\
      " #{@interval}, interval_unit: #{@interval_unit}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, name: #{@name.inspect}, kind: #{@kind.inspect},"\
      " unit_name: #{@unit_name.inspect}, enabled: #{@enabled.inspect}, unit_balance:"\
      " #{@unit_balance.inspect}, currency: #{@currency.inspect}, allocated_quantity:"\
      " #{@allocated_quantity.inspect}, pricing_scheme: #{@pricing_scheme.inspect}, component_id:"\
      " #{@component_id.inspect}, component_handle: #{@component_handle.inspect}, subscription_id:"\
      " #{@subscription_id.inspect}, recurring: #{@recurring.inspect}, upgrade_charge:"\
      " #{@upgrade_charge.inspect}, downgrade_credit: #{@downgrade_credit.inspect}, archived_at:"\
      " #{@archived_at.inspect}, price_point_id: #{@price_point_id.inspect}, price_point_handle:"\
      " #{@price_point_handle.inspect}, price_point_type: #{@price_point_type.inspect},"\
      " price_point_name: #{@price_point_name.inspect}, product_family_id:"\
      " #{@product_family_id.inspect}, product_family_handle: #{@product_family_handle.inspect},"\
      " created_at: #{@created_at.inspect}, updated_at: #{@updated_at.inspect},"\
      " use_site_exchange_rate: #{@use_site_exchange_rate.inspect}, description:"\
      " #{@description.inspect}, allow_fractional_quantities:"\
      " #{@allow_fractional_quantities.inspect}, subscription: #{@subscription.inspect},"\
      " historic_usages: #{@historic_usages.inspect}, display_on_hosted_page:"\
      " #{@display_on_hosted_page.inspect}, interval: #{@interval.inspect}, interval_unit:"\
      " #{@interval_unit.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
