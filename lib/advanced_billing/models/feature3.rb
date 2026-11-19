# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Feature3 Model.
  class Feature3 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :value

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :periodicity_interval

    # TODO: Write general description for this method
    # @return [EntitlementPeriodicityUnit]
    attr_accessor :periodicity_unit

    # When `true`, existing subscriptions on the item's price point are updated
    # with the new `value`/periodicity by a background job shortly after. Has no
    # effect on a product/component-level item. When `false` (default) and the
    # item's price point already has subscribers, the update is made on a clone
    # of the price point instead, and existing subscribers are unaffected.
    # @return [TrueClass | FalseClass]
    attr_accessor :propagate_to_subscriptions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['value'] = 'value'
      @_hash['periodicity_interval'] = 'periodicity_interval'
      @_hash['periodicity_unit'] = 'periodicity_unit'
      @_hash['propagate_to_subscriptions'] = 'propagate_to_subscriptions'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        value
        periodicity_interval
        periodicity_unit
        propagate_to_subscriptions
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        periodicity_interval
        periodicity_unit
      ]
    end

    def initialize(value: SKIP, periodicity_interval: SKIP,
                   periodicity_unit: SKIP, propagate_to_subscriptions: false,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @value = value unless value == SKIP
      @periodicity_interval = periodicity_interval unless periodicity_interval == SKIP
      @periodicity_unit = periodicity_unit unless periodicity_unit == SKIP
      unless propagate_to_subscriptions == SKIP
        @propagate_to_subscriptions =
          propagate_to_subscriptions
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      value = hash.key?('value') ? hash['value'] : SKIP
      periodicity_interval =
        hash.key?('periodicity_interval') ? hash['periodicity_interval'] : SKIP
      periodicity_unit =
        hash.key?('periodicity_unit') ? hash['periodicity_unit'] : SKIP
      propagate_to_subscriptions = hash['propagate_to_subscriptions'] ||= false

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Feature3.new(value: value,
                   periodicity_interval: periodicity_interval,
                   periodicity_unit: periodicity_unit,
                   propagate_to_subscriptions: propagate_to_subscriptions,
                   additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} value: #{@value}, periodicity_interval: #{@periodicity_interval},"\
      " periodicity_unit: #{@periodicity_unit}, propagate_to_subscriptions:"\
      " #{@propagate_to_subscriptions}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} value: #{@value.inspect}, periodicity_interval:"\
      " #{@periodicity_interval.inspect}, periodicity_unit: #{@periodicity_unit.inspect},"\
      " propagate_to_subscriptions: #{@propagate_to_subscriptions.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
