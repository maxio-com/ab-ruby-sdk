# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # `key` cannot be changed once set. `kind` cannot be changed once any feature
  # catalog item has been created from this template.
  class Feature1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :unit

    # The data type of a feature's value. For `access_right` features this is
    # always `boolean`, and for `usage_limit` features this is always `numeric`.
    # For `service_right` features, you choose the value type explicitly.
    # @return [FeatureValueType]
    attr_accessor :value_type

    # The data type of a feature's value. For `access_right` features this is
    # always `boolean`, and for `usage_limit` features this is always `numeric`.
    # For `service_right` features, you choose the value type explicitly.
    # @return [String]
    attr_accessor :default_value

    # The data type of a feature's value. For `access_right` features this is
    # always `boolean`, and for `usage_limit` features this is always `numeric`.
    # For `service_right` features, you choose the value type explicitly.
    # @return [Integer]
    attr_accessor :default_periodicity_interval

    # The data type of a feature's value. For `access_right` features this is
    # always `boolean`, and for `usage_limit` features this is always `numeric`.
    # For `service_right` features, you choose the value type explicitly.
    # @return [EntitlementPeriodicityUnit]
    attr_accessor :default_periodicity_unit

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['description'] = 'description'
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
        name
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

    def initialize(name: SKIP, description: SKIP, unit: SKIP, value_type: SKIP,
                   default_value: SKIP, default_periodicity_interval: SKIP,
                   default_periodicity_unit: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @name = name unless name == SKIP
      @description = description unless description == SKIP
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
      name = hash.key?('name') ? hash['name'] : SKIP
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
      Feature1.new(name: name,
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
      "<#{class_name} name: #{@name}, description: #{@description}, unit: #{@unit}, value_type:"\
      " #{@value_type}, default_value: #{@default_value}, default_periodicity_interval:"\
      " #{@default_periodicity_interval}, default_periodicity_unit: #{@default_periodicity_unit},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, description: #{@description.inspect}, unit:"\
      " #{@unit.inspect}, value_type: #{@value_type.inspect}, default_value:"\
      " #{@default_value.inspect}, default_periodicity_interval:"\
      " #{@default_periodicity_interval.inspect}, default_periodicity_unit:"\
      " #{@default_periodicity_unit.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
