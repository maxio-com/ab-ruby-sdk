# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Feature Model.
  class Feature < BaseModel
    SKIP = Object.new
    private_constant :SKIP

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

    # Required when `kind` is `usage_limit`.
    # @return [String]
    attr_accessor :unit

    # Required when `kind` is `service_right`. Ignored for other kinds, where it
    # is inferred automatically.
    # @return [FeatureValueType]
    attr_accessor :value_type

    # Required when `kind` is `service_right`. Ignored for other kinds, where it
    # is inferred automatically.
    # @return [String]
    attr_accessor :default_value

    # Only valid when `kind` is `usage_limit`.
    # @return [Integer]
    attr_accessor :default_periodicity_interval

    # Only valid when `kind` is `usage_limit`. Must be set together with
    # `default_periodicity_interval`.
    # @return [EntitlementPeriodicityUnit]
    attr_accessor :default_periodicity_unit

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['key'] = 'key'
      @_hash['name'] = 'name'
      @_hash['description'] = 'description'
      @_hash['kind'] = 'kind'
      @_hash['unit'] = 'unit'
      @_hash['value_type'] = 'value_type'
      @_hash['default_value'] = 'default_value'
      @_hash['default_periodicity_interval'] = 'default_periodicity_interval'
      @_hash['default_periodicity_unit'] = 'default_periodicity_unit'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        description
        unit
        value_type
        default_value
        default_periodicity_interval
        default_periodicity_unit
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
      ]
    end

    def initialize(key:, name:, kind:, description: SKIP, unit: SKIP,
                   value_type: SKIP, default_value: SKIP,
                   default_periodicity_interval: SKIP,
                   default_periodicity_unit: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @key = key
      @name = name
      @description = description unless description == SKIP
      @kind = kind
      @unit = unit unless unit == SKIP
      @value_type = value_type unless value_type == SKIP
      @default_value = default_value unless default_value == SKIP
      unless default_periodicity_interval == SKIP
        @default_periodicity_interval =
          default_periodicity_interval
      end
      @default_periodicity_unit = default_periodicity_unit unless default_periodicity_unit == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      key = hash.key?('key') ? hash['key'] : nil
      name = hash.key?('name') ? hash['name'] : nil
      kind = hash.key?('kind') ? hash['kind'] : nil
      description = hash.key?('description') ? hash['description'] : SKIP
      unit = hash.key?('unit') ? hash['unit'] : SKIP
      value_type = hash.key?('value_type') ? hash['value_type'] : SKIP
      default_value = hash.key?('default_value') ? hash['default_value'] : SKIP
      default_periodicity_interval =
        hash.key?('default_periodicity_interval') ? hash['default_periodicity_interval'] : SKIP
      default_periodicity_unit =
        hash.key?('default_periodicity_unit') ? hash['default_periodicity_unit'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Feature.new(key: key,
                  name: name,
                  kind: kind,
                  description: description,
                  unit: unit,
                  value_type: value_type,
                  default_value: default_value,
                  default_periodicity_interval: default_periodicity_interval,
                  default_periodicity_unit: default_periodicity_unit,
                  additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} key: #{@key}, name: #{@name}, description: #{@description}, kind: #{@kind},"\
      " unit: #{@unit}, value_type: #{@value_type}, default_value: #{@default_value},"\
      " default_periodicity_interval: #{@default_periodicity_interval}, default_periodicity_unit:"\
      " #{@default_periodicity_unit}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} key: #{@key.inspect}, name: #{@name.inspect}, description:"\
      " #{@description.inspect}, kind: #{@kind.inspect}, unit: #{@unit.inspect}, value_type:"\
      " #{@value_type.inspect}, default_value: #{@default_value.inspect},"\
      " default_periodicity_interval: #{@default_periodicity_interval.inspect},"\
      " default_periodicity_unit: #{@default_periodicity_unit.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
