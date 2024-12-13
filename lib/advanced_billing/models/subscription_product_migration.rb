# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionProductMigration Model.
  class SubscriptionProductMigration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the target Product. Either a product_id or product_handle must
    # be present. A Subscription can be migrated to another product for both the
    # current Product Family and another Product Family. Note: Going to another
    # Product Family, components will not be migrated as well.
    # @return [Integer]
    attr_accessor :product_id

    # The ID of the specified product's price point. This can be passed to
    # migrate to a non-default price point.
    # @return [Integer]
    attr_accessor :product_price_point_id

    # Whether to include the trial period configured for the product price point
    # when starting a new billing period. Note that if preserve_period is set,
    # then include_trial will be ignored.
    # @return [TrueClass | FalseClass]
    attr_accessor :include_trial

    # If `true` is sent initial charges will be assessed.
    # @return [TrueClass | FalseClass]
    attr_accessor :include_initial_charge

    # If `true` is sent, any coupons associated with the subscription will be
    # applied to the migration. If `false` is sent, coupons will not be applied.
    # Note: When migrating to a new product family, the coupon cannot migrate.
    # @return [TrueClass | FalseClass]
    attr_accessor :include_coupons

    # If `false` is sent, the subscription's billing period will be reset to
    # today and the full price of the new product will be charged. If `true` is
    # sent, the billing period will not change and a prorated charge will be
    # issued for the new product.
    # @return [TrueClass | FalseClass]
    attr_accessor :preserve_period

    # The handle of the target Product. Either a product_id or product_handle
    # must be present. A Subscription can be migrated to another product for
    # both the current Product Family and another Product Family. Note: Going to
    # another Product Family, components will not be migrated as well.
    # @return [String]
    attr_accessor :product_handle

    # The ID or handle of the specified product's price point. This can be
    # passed to migrate to a non-default price point.
    # @return [String]
    attr_accessor :product_price_point_handle

    # The ID or handle of the specified product's price point. This can be
    # passed to migrate to a non-default price point.
    # @return [Proration]
    attr_accessor :proration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['product_id'] = 'product_id'
      @_hash['product_price_point_id'] = 'product_price_point_id'
      @_hash['include_trial'] = 'include_trial'
      @_hash['include_initial_charge'] = 'include_initial_charge'
      @_hash['include_coupons'] = 'include_coupons'
      @_hash['preserve_period'] = 'preserve_period'
      @_hash['product_handle'] = 'product_handle'
      @_hash['product_price_point_handle'] = 'product_price_point_handle'
      @_hash['proration'] = 'proration'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        product_id
        product_price_point_id
        include_trial
        include_initial_charge
        include_coupons
        preserve_period
        product_handle
        product_price_point_handle
        proration
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(product_id: SKIP, product_price_point_id: SKIP,
                   include_trial: false, include_initial_charge: false,
                   include_coupons: true, preserve_period: false,
                   product_handle: SKIP, product_price_point_handle: SKIP,
                   proration: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @product_id = product_id unless product_id == SKIP
      @product_price_point_id = product_price_point_id unless product_price_point_id == SKIP
      @include_trial = include_trial unless include_trial == SKIP
      @include_initial_charge = include_initial_charge unless include_initial_charge == SKIP
      @include_coupons = include_coupons unless include_coupons == SKIP
      @preserve_period = preserve_period unless preserve_period == SKIP
      @product_handle = product_handle unless product_handle == SKIP
      unless product_price_point_handle == SKIP
        @product_price_point_handle =
          product_price_point_handle
      end
      @proration = proration unless proration == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      product_id = hash.key?('product_id') ? hash['product_id'] : SKIP
      product_price_point_id =
        hash.key?('product_price_point_id') ? hash['product_price_point_id'] : SKIP
      include_trial = hash['include_trial'] ||= false
      include_initial_charge = hash['include_initial_charge'] ||= false
      include_coupons = hash['include_coupons'] ||= true
      preserve_period = hash['preserve_period'] ||= false
      product_handle =
        hash.key?('product_handle') ? hash['product_handle'] : SKIP
      product_price_point_handle =
        hash.key?('product_price_point_handle') ? hash['product_price_point_handle'] : SKIP
      proration = Proration.from_hash(hash['proration']) if hash['proration']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionProductMigration.new(product_id: product_id,
                                       product_price_point_id: product_price_point_id,
                                       include_trial: include_trial,
                                       include_initial_charge: include_initial_charge,
                                       include_coupons: include_coupons,
                                       preserve_period: preserve_period,
                                       product_handle: product_handle,
                                       product_price_point_handle: product_price_point_handle,
                                       proration: proration,
                                       additional_properties: additional_properties)
    end
  end
end
