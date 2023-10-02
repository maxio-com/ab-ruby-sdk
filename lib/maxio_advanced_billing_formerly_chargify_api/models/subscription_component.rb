# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
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

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :kind

    # TODO: Write general description for this method
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
    # @return [Integer]
    attr_accessor :allocated_quantity

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [String]
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

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [String]
    attr_accessor :upgrade_charge

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [String]
    attr_accessor :downgrade_credit

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [String]
    attr_accessor :archived_at

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [Integer]
    attr_accessor :price_point_id

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [String]
    attr_accessor :price_point_handle

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [Object]
    attr_accessor :price_point_type

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [String]
    attr_accessor :price_point_name

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [Integer]
    attr_accessor :product_family_id

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [String]
    attr_accessor :product_family_handle

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [String]
    attr_accessor :created_at

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [String]
    attr_accessor :updated_at

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [String]
    attr_accessor :description

    # For Quantity-based components: The current allocation for the component on
    # the given subscription. For On/Off components: Use 1 for on. Use 0 for
    # off.
    # @return [TrueClass | FalseClass]
    attr_accessor :allow_fractional_quantities

    # An optional object, will be returned if provided `include=subscription`
    # query param.
    # @return [SubscriptionComponentSubscription]
    attr_accessor :subscription

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
        price_point_name
        use_site_exchange_rate
        description
      ]
    end

    def initialize(id = SKIP,
                   name = SKIP,
                   kind = SKIP,
                   unit_name = SKIP,
                   enabled = SKIP,
                   unit_balance = SKIP,
                   currency = SKIP,
                   allocated_quantity = SKIP,
                   pricing_scheme = SKIP,
                   component_id = SKIP,
                   component_handle = SKIP,
                   subscription_id = SKIP,
                   recurring = SKIP,
                   upgrade_charge = SKIP,
                   downgrade_credit = SKIP,
                   archived_at = SKIP,
                   price_point_id = SKIP,
                   price_point_handle = SKIP,
                   price_point_type = SKIP,
                   price_point_name = SKIP,
                   product_family_id = SKIP,
                   product_family_handle = SKIP,
                   created_at = SKIP,
                   updated_at = SKIP,
                   use_site_exchange_rate = SKIP,
                   description = SKIP,
                   allow_fractional_quantities = SKIP,
                   subscription = SKIP)
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
      allocated_quantity =
        hash.key?('allocated_quantity') ? hash['allocated_quantity'] : SKIP
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
      archived_at = hash.key?('archived_at') ? hash['archived_at'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      price_point_handle =
        hash.key?('price_point_handle') ? hash['price_point_handle'] : SKIP
      price_point_type = hash.key?('price_point_type') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:SubscriptionComponentPricePointType), hash['price_point_type']
      ) : SKIP
      price_point_name =
        hash.key?('price_point_name') ? hash['price_point_name'] : SKIP
      product_family_id =
        hash.key?('product_family_id') ? hash['product_family_id'] : SKIP
      product_family_handle =
        hash.key?('product_family_handle') ? hash['product_family_handle'] : SKIP
      created_at = hash.key?('created_at') ? hash['created_at'] : SKIP
      updated_at = hash.key?('updated_at') ? hash['updated_at'] : SKIP
      use_site_exchange_rate =
        hash.key?('use_site_exchange_rate') ? hash['use_site_exchange_rate'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      allow_fractional_quantities =
        hash.key?('allow_fractional_quantities') ? hash['allow_fractional_quantities'] : SKIP
      subscription = SubscriptionComponentSubscription.from_hash(hash['subscription']) if
        hash['subscription']

      # Create object from extracted values.
      SubscriptionComponent.new(id,
                                name,
                                kind,
                                unit_name,
                                enabled,
                                unit_balance,
                                currency,
                                allocated_quantity,
                                pricing_scheme,
                                component_id,
                                component_handle,
                                subscription_id,
                                recurring,
                                upgrade_charge,
                                downgrade_credit,
                                archived_at,
                                price_point_id,
                                price_point_handle,
                                price_point_type,
                                price_point_name,
                                product_family_id,
                                product_family_handle,
                                created_at,
                                updated_at,
                                use_site_exchange_rate,
                                description,
                                allow_fractional_quantities,
                                subscription)
    end

    # Validates an instance of the object from a given value.
    # @param [SubscriptionComponent | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
