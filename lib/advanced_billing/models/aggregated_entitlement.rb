# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # One entitlement in a subscriber's aggregated entitlements list. Entries are
  # aggregated per feature key and periodicity window, not per feature key
  # alone. A `usage_limit` feature granted with two different periodicities
  # yields two entries sharing one `feature_key`. Use `periodicity_key` to
  # identify an entry uniquely.
  class AggregatedEntitlement < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The feature's key, prefixed by kind: `feature.*` for `access_right`,
    # `usage.*` for `usage_limit`, `service.*` for `service_right`.
    # @return [String]
    attr_accessor :feature_key

    # Uniquely identifies this aggregated entry: the prefixed feature key,
    # suffixed with `:{interval}:{unit}` when the entitlement has a periodicity
    # window. Equal to `feature_key` when `periodicity` is `null`.
    # @return [String]
    attr_accessor :periodicity_key

    # Uniquely identifies this aggregated entry: the prefixed feature key,
    # suffixed with `:{interval}:{unit}` when the entitlement has a periodicity
    # window. Equal to `feature_key` when `periodicity` is `null`.
    # @return [String]
    attr_accessor :name

    # The behavior of a feature:
    # - `access_right`: a boolean entitlement. A subscriber either has access or
    # does not.
    # - `usage_limit`: a quantified allowance measured over a recurring period
    # (for example, "10,000 API calls per month").
    # - `service_right`: a free-form value (text, boolean, or number) that isn't
    # a simple access flag or a metered limit.
    # @return [FeatureKind]
    attr_accessor :type

    # The aggregated value, coerced according to `type`: a boolean for
    # `access_right` (and boolean `service_right`), a number for `usage_limit`
    # (and numeric `service_right`), or a string for text `service_right`.
    # @return [Object]
    attr_accessor :value

    # `true` only when the aggregated value is truthy for this feature's kind,
    # and the subscription is in a live state (`active`, `trialing`,
    # `assessing`, `past_due`, or `soft_failure`). `false` otherwise, including
    # for `awaiting_signup`, canceled, expired, and on-hold subscriptions.
    # Entitlements deliberately stay enabled through dunning.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # `true` only when the aggregated value is truthy for this feature's kind,
    # and the subscription is in a live state (`active`, `trialing`,
    # `assessing`, `past_due`, or `soft_failure`). `false` otherwise, including
    # for `awaiting_signup`, canceled, expired, and on-hold subscriptions.
    # Entitlements deliberately stay enabled through dunning.
    # @return [AggregatedEntitlementPeriodicity]
    attr_accessor :periodicity

    # The names of the products/components contributing to this entitlement. For
    # `access_right` features, only contributors that granted `true` are listed.
    # @return [Array[String]]
    attr_accessor :source_products

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['feature_key'] = 'feature_key'
      @_hash['periodicity_key'] = 'periodicity_key'
      @_hash['name'] = 'name'
      @_hash['type'] = 'type'
      @_hash['value'] = 'value'
      @_hash['enabled'] = 'enabled'
      @_hash['periodicity'] = 'periodicity'
      @_hash['source_products'] = 'source_products'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        feature_key
        periodicity_key
        name
        type
        value
        enabled
        periodicity
        source_products
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        periodicity
      ]
    end

    def initialize(feature_key: SKIP, periodicity_key: SKIP, name: SKIP,
                   type: SKIP, value: SKIP, enabled: SKIP, periodicity: SKIP,
                   source_products: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @feature_key = feature_key unless feature_key == SKIP
      @periodicity_key = periodicity_key unless periodicity_key == SKIP
      @name = name unless name == SKIP
      @type = type unless type == SKIP
      @value = value unless value == SKIP
      @enabled = enabled unless enabled == SKIP
      @periodicity = periodicity unless periodicity == SKIP
      @source_products = source_products unless source_products == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      feature_key = hash.key?('feature_key') ? hash['feature_key'] : SKIP
      periodicity_key =
        hash.key?('periodicity_key') ? hash['periodicity_key'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      value = hash.key?('value') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:AggregatedEntitlementValue), hash['value']
      ) : SKIP
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      periodicity = AggregatedEntitlementPeriodicity.from_hash(hash['periodicity']) if
        hash['periodicity']
      source_products =
        hash.key?('source_products') ? hash['source_products'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      AggregatedEntitlement.new(feature_key: feature_key,
                                periodicity_key: periodicity_key,
                                name: name,
                                type: type,
                                value: value,
                                enabled: enabled,
                                periodicity: periodicity,
                                source_products: source_products,
                                additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [AggregatedEntitlement | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} feature_key: #{@feature_key}, periodicity_key: #{@periodicity_key}, name:"\
      " #{@name}, type: #{@type}, value: #{@value}, enabled: #{@enabled}, periodicity:"\
      " #{@periodicity}, source_products: #{@source_products}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} feature_key: #{@feature_key.inspect}, periodicity_key:"\
      " #{@periodicity_key.inspect}, name: #{@name.inspect}, type: #{@type.inspect}, value:"\
      " #{@value.inspect}, enabled: #{@enabled.inspect}, periodicity: #{@periodicity.inspect},"\
      " source_products: #{@source_products.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
