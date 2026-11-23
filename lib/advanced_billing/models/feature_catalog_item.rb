# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # A feature template attached to a specific product or component (or one of
  # their price points), with a concrete value. When a subscriber signs up for
  # or is assigned this product/component, the feature catalog item is
  # provisioned as an entitlement on their subscription.
  class FeatureCatalogItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # The id of the feature template this item was created from.
    # @return [Integer]
    attr_accessor :feature_template_id

    # The `key` of the parent feature template.
    # @return [String]
    attr_accessor :feature_key

    # The `name` of the parent feature template.
    # @return [String]
    attr_accessor :feature_name

    # The behavior of a feature:
    # - `access_right`: a boolean entitlement. A subscriber either has access or
    # does not.
    # - `usage_limit`: a quantified allowance measured over a recurring period
    # (for example, "10,000 API calls per month").
    # - `service_right`: a free-form value (text, boolean, or number) that isn't
    # a simple access flag or a metered limit.
    # @return [FeatureKind]
    attr_accessor :feature_kind

    # The value granted by this feature catalog item. Interpreted according to
    # `feature_kind`: `"true"`/`"false"` for `access_right`, a numeric string
    # for `usage_limit`, or any string for `service_right` (shaped by the
    # feature template's `value_type`).
    # @return [String]
    attr_accessor :value

    # Set when `feature_kind` is `usage_limit`; `null` otherwise.
    # @return [Integer]
    attr_accessor :periodicity_interval

    # Set when `feature_kind` is `usage_limit`; `null` otherwise.
    # @return [EntitlementPeriodicityUnit]
    attr_accessor :periodicity_unit

    # `null` when this feature catalog item applies to every price point of its
    # owning product/component. Set when the feature catalog item is an override
    # for one specific price point.
    # @return [FeatureOwnerPricePointType]
    attr_accessor :price_point_type

    # Set together with `price_point_type` for price-point-specific overrides.
    # @return [Integer]
    attr_accessor :price_point_id

    # Set together with `price_point_type` for price-point-specific overrides.
    # @return [DateTime]
    attr_accessor :archived_at

    # Set together with `price_point_type` for price-point-specific overrides.
    # @return [DateTime]
    attr_accessor :created_at

    # Set together with `price_point_type` for price-point-specific overrides.
    # @return [DateTime]
    attr_accessor :updated_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['feature_template_id'] = 'feature_template_id'
      @_hash['feature_key'] = 'feature_key'
      @_hash['feature_name'] = 'feature_name'
      @_hash['feature_kind'] = 'feature_kind'
      @_hash['value'] = 'value'
      @_hash['periodicity_interval'] = 'periodicity_interval'
      @_hash['periodicity_unit'] = 'periodicity_unit'
      @_hash['price_point_type'] = 'price_point_type'
      @_hash['price_point_id'] = 'price_point_id'
      @_hash['archived_at'] = 'archived_at'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        feature_template_id
        feature_key
        feature_name
        feature_kind
        value
        periodicity_interval
        periodicity_unit
        price_point_type
        price_point_id
        archived_at
        created_at
        updated_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        periodicity_interval
        periodicity_unit
        price_point_type
        price_point_id
        archived_at
      ]
    end

    def initialize(id: SKIP, feature_template_id: SKIP, feature_key: SKIP,
                   feature_name: SKIP, feature_kind: SKIP, value: SKIP,
                   periodicity_interval: SKIP, periodicity_unit: SKIP,
                   price_point_type: SKIP, price_point_id: SKIP,
                   archived_at: SKIP, created_at: SKIP, updated_at: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @feature_template_id = feature_template_id unless feature_template_id == SKIP
      @feature_key = feature_key unless feature_key == SKIP
      @feature_name = feature_name unless feature_name == SKIP
      @feature_kind = feature_kind unless feature_kind == SKIP
      @value = value unless value == SKIP
      @periodicity_interval = periodicity_interval unless periodicity_interval == SKIP
      @periodicity_unit = periodicity_unit unless periodicity_unit == SKIP
      @price_point_type = price_point_type unless price_point_type == SKIP
      @price_point_id = price_point_id unless price_point_id == SKIP
      @archived_at = archived_at unless archived_at == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      feature_template_id =
        hash.key?('feature_template_id') ? hash['feature_template_id'] : SKIP
      feature_key = hash.key?('feature_key') ? hash['feature_key'] : SKIP
      feature_name = hash.key?('feature_name') ? hash['feature_name'] : SKIP
      feature_kind = hash.key?('feature_kind') ? hash['feature_kind'] : SKIP
      value = hash.key?('value') ? hash['value'] : SKIP
      periodicity_interval =
        hash.key?('periodicity_interval') ? hash['periodicity_interval'] : SKIP
      periodicity_unit =
        hash.key?('periodicity_unit') ? hash['periodicity_unit'] : SKIP
      price_point_type =
        hash.key?('price_point_type') ? hash['price_point_type'] : SKIP
      price_point_id =
        hash.key?('price_point_id') ? hash['price_point_id'] : SKIP
      archived_at = if hash.key?('archived_at')
                      (DateTimeHelper.from_rfc3339(hash['archived_at']) if hash['archived_at'])
                    else
                      SKIP
                    end
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

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      FeatureCatalogItem.new(id: id,
                             feature_template_id: feature_template_id,
                             feature_key: feature_key,
                             feature_name: feature_name,
                             feature_kind: feature_kind,
                             value: value,
                             periodicity_interval: periodicity_interval,
                             periodicity_unit: periodicity_unit,
                             price_point_type: price_point_type,
                             price_point_id: price_point_id,
                             archived_at: archived_at,
                             created_at: created_at,
                             updated_at: updated_at,
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

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, feature_template_id: #{@feature_template_id}, feature_key:"\
      " #{@feature_key}, feature_name: #{@feature_name}, feature_kind: #{@feature_kind}, value:"\
      " #{@value}, periodicity_interval: #{@periodicity_interval}, periodicity_unit:"\
      " #{@periodicity_unit}, price_point_type: #{@price_point_type}, price_point_id:"\
      " #{@price_point_id}, archived_at: #{@archived_at}, created_at: #{@created_at}, updated_at:"\
      " #{@updated_at}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, feature_template_id: #{@feature_template_id.inspect},"\
      " feature_key: #{@feature_key.inspect}, feature_name: #{@feature_name.inspect},"\
      " feature_kind: #{@feature_kind.inspect}, value: #{@value.inspect}, periodicity_interval:"\
      " #{@periodicity_interval.inspect}, periodicity_unit: #{@periodicity_unit.inspect},"\
      " price_point_type: #{@price_point_type.inspect}, price_point_id:"\
      " #{@price_point_id.inspect}, archived_at: #{@archived_at.inspect}, created_at:"\
      " #{@created_at.inspect}, updated_at: #{@updated_at.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
