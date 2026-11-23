# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # A feature that can be granted to subscribers, defined once at the site level
  # and then attached to products or components.
  class FeatureTemplate < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The Advanced Billing id of the feature template.
    # @return [Integer]
    attr_accessor :id

    # A unique, lowercase, underscore-separated identifier for the feature.
    # Immutable once set.
    # @return [String]
    attr_accessor :key

    # The display name of the feature.
    # @return [String]
    attr_accessor :name

    # The display name of the feature.
    # @return [String]
    attr_accessor :description

    # The behavior of a feature:
    # - `access_right`: a boolean entitlement. A subscriber either has access or
    # does not.
    # - `usage_limit`: a quantified allowance measured over a recurring period
    # (for example, "10,000 API calls per month").
    # - `service_right`: a free-form value (text, boolean, or number) that isn't
    # a simple access flag or a metered limit.
    # @return [FeatureKind]
    attr_accessor :kind

    # The unit the feature is measured in (for example, `requests` or `GB`).
    # Required when `kind` is `usage_limit`.
    # @return [String]
    attr_accessor :unit

    # The data type of a feature's value. For `access_right` features this is
    # always `boolean`, and for `usage_limit` features this is always `numeric`.
    # For `service_right` features, you choose the value type explicitly.
    # @return [FeatureValueType]
    attr_accessor :value_type

    # A default value used to pre-populate new feature catalog items created
    # from this template.
    # @return [String]
    attr_accessor :default_value

    # For `usage_limit` features, the default periodicity interval used to
    # pre-populate new feature catalog items. Always `null` for other kinds.
    # @return [Integer]
    attr_accessor :default_periodicity_interval

    # For `usage_limit` features, the default periodicity unit used to
    # pre-populate new feature catalog items. Always `null` for other kinds.
    # @return [EntitlementPeriodicityUnit]
    attr_accessor :default_periodicity_unit

    # The date and time the feature template was archived, or `null` if it is
    # active.
    # @return [DateTime]
    attr_accessor :archived_at

    # The date and time the feature template was archived, or `null` if it is
    # active.
    # @return [DateTime]
    attr_accessor :created_at

    # The date and time the feature template was archived, or `null` if it is
    # active.
    # @return [DateTime]
    attr_accessor :updated_at

    # The number of **components** this feature template is currently attached
    # to via an active feature catalog item. Despite the name, this counts
    # components, not products. In the Advanced Billing UI, components are
    # labeled "Products."
    # @return [Integer]
    attr_accessor :products_count

    # The number of **products** this feature template is currently attached to
    # via an active feature catalog item. Despite the name, this counts
    # products, not plans. In the Advanced Billing UI, products are labeled
    # "Plans."
    # @return [Integer]
    attr_accessor :plans_count

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['key'] = 'key'
      @_hash['name'] = 'name'
      @_hash['description'] = 'description'
      @_hash['kind'] = 'kind'
      @_hash['unit'] = 'unit'
      @_hash['value_type'] = 'value_type'
      @_hash['default_value'] = 'default_value'
      @_hash['default_periodicity_interval'] = 'default_periodicity_interval'
      @_hash['default_periodicity_unit'] = 'default_periodicity_unit'
      @_hash['archived_at'] = 'archived_at'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['products_count'] = 'products_count'
      @_hash['plans_count'] = 'plans_count'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        key
        name
        description
        kind
        unit
        value_type
        default_value
        default_periodicity_interval
        default_periodicity_unit
        archived_at
        created_at
        updated_at
        products_count
        plans_count
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        description
        unit
        default_value
        default_periodicity_interval
        default_periodicity_unit
        archived_at
      ]
    end

    def initialize(id: SKIP, key: SKIP, name: SKIP, description: SKIP,
                   kind: SKIP, unit: SKIP, value_type: SKIP,
                   default_value: SKIP, default_periodicity_interval: SKIP,
                   default_periodicity_unit: SKIP, archived_at: SKIP,
                   created_at: SKIP, updated_at: SKIP, products_count: SKIP,
                   plans_count: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @key = key unless key == SKIP
      @name = name unless name == SKIP
      @description = description unless description == SKIP
      @kind = kind unless kind == SKIP
      @unit = unit unless unit == SKIP
      @value_type = value_type unless value_type == SKIP
      @default_value = default_value unless default_value == SKIP
      unless default_periodicity_interval == SKIP
        @default_periodicity_interval =
          default_periodicity_interval
      end
      @default_periodicity_unit = default_periodicity_unit unless default_periodicity_unit == SKIP
      @archived_at = archived_at unless archived_at == SKIP
      @created_at = created_at unless created_at == SKIP
      @updated_at = updated_at unless updated_at == SKIP
      @products_count = products_count unless products_count == SKIP
      @plans_count = plans_count unless plans_count == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      key = hash.key?('key') ? hash['key'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      kind = hash.key?('kind') ? hash['kind'] : SKIP
      unit = hash.key?('unit') ? hash['unit'] : SKIP
      value_type = hash.key?('value_type') ? hash['value_type'] : SKIP
      default_value = hash.key?('default_value') ? hash['default_value'] : SKIP
      default_periodicity_interval =
        hash.key?('default_periodicity_interval') ? hash['default_periodicity_interval'] : SKIP
      default_periodicity_unit =
        hash.key?('default_periodicity_unit') ? hash['default_periodicity_unit'] : SKIP
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
      products_count =
        hash.key?('products_count') ? hash['products_count'] : SKIP
      plans_count = hash.key?('plans_count') ? hash['plans_count'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      FeatureTemplate.new(id: id,
                          key: key,
                          name: name,
                          description: description,
                          kind: kind,
                          unit: unit,
                          value_type: value_type,
                          default_value: default_value,
                          default_periodicity_interval: default_periodicity_interval,
                          default_periodicity_unit: default_periodicity_unit,
                          archived_at: archived_at,
                          created_at: created_at,
                          updated_at: updated_at,
                          products_count: products_count,
                          plans_count: plans_count,
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
      "<#{class_name} id: #{@id}, key: #{@key}, name: #{@name}, description: #{@description},"\
      " kind: #{@kind}, unit: #{@unit}, value_type: #{@value_type}, default_value:"\
      " #{@default_value}, default_periodicity_interval: #{@default_periodicity_interval},"\
      " default_periodicity_unit: #{@default_periodicity_unit}, archived_at: #{@archived_at},"\
      " created_at: #{@created_at}, updated_at: #{@updated_at}, products_count:"\
      " #{@products_count}, plans_count: #{@plans_count}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, key: #{@key.inspect}, name: #{@name.inspect},"\
      " description: #{@description.inspect}, kind: #{@kind.inspect}, unit: #{@unit.inspect},"\
      " value_type: #{@value_type.inspect}, default_value: #{@default_value.inspect},"\
      " default_periodicity_interval: #{@default_periodicity_interval.inspect},"\
      " default_periodicity_unit: #{@default_periodicity_unit.inspect}, archived_at:"\
      " #{@archived_at.inspect}, created_at: #{@created_at.inspect}, updated_at:"\
      " #{@updated_at.inspect}, products_count: #{@products_count.inspect}, plans_count:"\
      " #{@plans_count.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
