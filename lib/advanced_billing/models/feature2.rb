# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Feature2 Model.
  class Feature2 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The id of the feature template to attach.
    # @return [Integer]
    attr_accessor :feature_template_id

    # The value granted. Defaults to the feature template's `default_value`;
    # required when the template has none.
    # @return [String]
    attr_accessor :value

    # Required for `usage_limit` features, unless the feature template has a
    # default periodicity, which is used when omitted. Must be omitted for other
    # kinds.
    # @return [Integer]
    attr_accessor :periodicity_interval

    # Required for `usage_limit` features, unless the feature template has a
    # default periodicity, which is used when omitted. Must be omitted for other
    # kinds.
    # @return [EntitlementPeriodicityUnit]
    attr_accessor :periodicity_unit

    # Set together with `price_point_id` to scope the feature catalog item to a
    # single price point. Omit both to create a product/component-level item,
    # which is a template: it is copied onto price points created afterwards
    # (except bulk-created ones; Clone Component Price Point applies only the
    # items sent with it), but not added to price points that already exist or
    # to their subscribers.
    # @return [FeatureOwnerPricePointType]
    attr_accessor :price_point_type

    # Set together with `price_point_id` to scope the feature catalog item to a
    # single price point. Omit both to create a product/component-level item,
    # which is a template: it is copied onto price points created afterwards
    # (except bulk-created ones; Clone Component Price Point applies only the
    # items sent with it), but not added to price points that already exist or
    # to their subscribers.
    # @return [Integer]
    attr_accessor :price_point_id

    # Applies to price-point-scoped items only. When `true`, existing
    # subscriptions on that price point are granted an entitlement for this
    # feature by a background job shortly after, instead of at their next
    # subscription change. When `false` (default) and the price point already
    # has subscribers, the feature is created on a clone of the price point
    # instead, and existing subscribers are unaffected. On a
    # product/component-level item it has no effect, except when the call
    # restores that item's archived price-point copies (creating an item again
    # for a feature template whose item was archived): then `true` grants the
    # feature to those price points' subscribers, and without it the call
    # returns `422` if any of them lack the feature.
    # @return [TrueClass | FalseClass]
    attr_accessor :propagate_to_subscriptions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['feature_template_id'] = 'feature_template_id'
      @_hash['value'] = 'value'
      @_hash['periodicity_interval'] = 'periodicity_interval'
      @_hash['periodicity_unit'] = 'periodicity_unit'
      @_hash['price_point_type'] = 'price_point_type'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['propagate_to_subscriptions'] = 'propagate_to_subscriptions'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        value
        periodicity_interval
        periodicity_unit
        price_point_type
        price_point_id
        propagate_to_subscriptions
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        periodicity_interval
        periodicity_unit
        price_point_type
        price_point_id
      ]
    end

    def initialize(feature_template_id:, value: SKIP,
                   periodicity_interval: SKIP, periodicity_unit: SKIP,
                   price_point_type: SKIP, price_point_id: SKIP,
                   propagate_to_subscriptions: false, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @feature_template_id = feature_template_id
      @value = value unless value == SKIP
      @periodicity_interval = periodicity_interval unless periodicity_interval == SKIP
      @periodicity_unit = periodicity_unit unless periodicity_unit == SKIP
      @price_point_type = price_point_type unless price_point_type == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      unless propagate_to_subscriptions == SKIP
        @propagate_to_subscriptions =
          propagate_to_subscriptions
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      feature_template_id =
        hash.key?('feature_template_id') ? hash['feature_template_id'] : nil
      value = hash.key?('value') ? hash['value'] : SKIP
      periodicity_interval =
        hash.key?('periodicity_interval') ? hash['periodicity_interval'] : SKIP
      periodicity_unit =
        hash.key?('periodicity_unit') ? hash['periodicity_unit'] : SKIP
      price_point_type =
        hash.key?('price_point_type') ? hash['price_point_type'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      propagate_to_subscriptions = hash['propagate_to_subscriptions'] ||= false

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Feature2.new(feature_template_id: feature_template_id,
                   value: value,
                   periodicity_interval: periodicity_interval,
                   periodicity_unit: periodicity_unit,
                   price_point_type: price_point_type,
                   price_point_id: price_point_id,
                   propagate_to_subscriptions: propagate_to_subscriptions,
                   additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} feature_template_id: #{@feature_template_id}, value: #{@value},"\
      " periodicity_interval: #{@periodicity_interval}, periodicity_unit: #{@periodicity_unit},"\
      " price_point_type: #{@price_point_type}, price_point_id: #{@price_point_id},"\
      " propagate_to_subscriptions: #{@propagate_to_subscriptions}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} feature_template_id: #{@feature_template_id.inspect}, value:"\
      " #{@value.inspect}, periodicity_interval: #{@periodicity_interval.inspect},"\
      " periodicity_unit: #{@periodicity_unit.inspect}, price_point_type:"\
      " #{@price_point_type.inspect}, price_point_id: #{@price_point_id.inspect},"\
      " propagate_to_subscriptions: #{@propagate_to_subscriptions.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
