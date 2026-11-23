# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # A feature to put on the cloned price point. Requires Entitlements to be
  # enabled for the site; ignored otherwise. Unlike Create Feature Catalog Item,
  # nothing falls back to the feature template's defaults: send `value`, and for
  # a `usage_limit` feature its periodicity (and any grant expiration)
  # explicitly. If any item can't be applied, for example a missing `value`, a
  # `usage_limit` item without periodicity, or an archived or unknown feature
  # template, the whole clone fails with `422` and nothing is created.
  class CloneFeatureCatalogItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :feature_template_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :value

    # Required for `usage_limit` features; must be omitted for other kinds.
    # @return [Integer]
    attr_accessor :periodicity_interval

    # Required for `usage_limit` features; must be omitted for other kinds.
    # @return [EntitlementPeriodicityUnit]
    attr_accessor :periodicity_unit

    # `usage_limit` features only. A positive number of
    # `grant_expiration_unit`s; required with `day` or `month`, and must be
    # omitted with `until_next_refill`.
    # @return [Integer]
    attr_accessor :grant_expiration_interval

    # `usage_limit` features only.
    # @return [GrantExpirationUnit]
    attr_accessor :grant_expiration_unit

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['feature_template_id'] = 'feature_template_id'
      @_hash['value'] = 'value'
      @_hash['periodicity_interval'] = 'periodicity_interval'
      @_hash['periodicity_unit'] = 'periodicity_unit'
      @_hash['grant_expiration_interval'] = 'grant_expiration_interval'
      @_hash['grant_expiration_unit'] = 'grant_expiration_unit'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        periodicity_interval
        periodicity_unit
        grant_expiration_interval
        grant_expiration_unit
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        periodicity_interval
        periodicity_unit
        grant_expiration_interval
        grant_expiration_unit
      ]
    end

    def initialize(feature_template_id:, value:, periodicity_interval: SKIP,
                   periodicity_unit: SKIP, grant_expiration_interval: SKIP,
                   grant_expiration_unit: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @feature_template_id = feature_template_id
      @value = value
      @periodicity_interval = periodicity_interval unless periodicity_interval == SKIP
      @periodicity_unit = periodicity_unit unless periodicity_unit == SKIP
      unless grant_expiration_interval == SKIP
        @grant_expiration_interval =
          grant_expiration_interval
      end
      @grant_expiration_unit = grant_expiration_unit unless grant_expiration_unit == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      feature_template_id =
        hash.key?('feature_template_id') ? hash['feature_template_id'] : nil
      value = hash.key?('value') ? hash['value'] : nil
      periodicity_interval =
        hash.key?('periodicity_interval') ? hash['periodicity_interval'] : SKIP
      periodicity_unit =
        hash.key?('periodicity_unit') ? hash['periodicity_unit'] : SKIP
      grant_expiration_interval =
        hash.key?('grant_expiration_interval') ? hash['grant_expiration_interval'] : SKIP
      grant_expiration_unit =
        hash.key?('grant_expiration_unit') ? hash['grant_expiration_unit'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CloneFeatureCatalogItem.new(feature_template_id: feature_template_id,
                                  value: value,
                                  periodicity_interval: periodicity_interval,
                                  periodicity_unit: periodicity_unit,
                                  grant_expiration_interval: grant_expiration_interval,
                                  grant_expiration_unit: grant_expiration_unit,
                                  additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} feature_template_id: #{@feature_template_id}, value: #{@value},"\
      " periodicity_interval: #{@periodicity_interval}, periodicity_unit: #{@periodicity_unit},"\
      " grant_expiration_interval: #{@grant_expiration_interval}, grant_expiration_unit:"\
      " #{@grant_expiration_unit}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} feature_template_id: #{@feature_template_id.inspect}, value:"\
      " #{@value.inspect}, periodicity_interval: #{@periodicity_interval.inspect},"\
      " periodicity_unit: #{@periodicity_unit.inspect}, grant_expiration_interval:"\
      " #{@grant_expiration_interval.inspect}, grant_expiration_unit:"\
      " #{@grant_expiration_unit.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
