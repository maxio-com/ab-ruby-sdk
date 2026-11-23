# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # FeatureCatalogItemResponse Model.
  class FeatureCatalogItemResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A feature template attached to a specific product or component (or one of
    # their price points), with a concrete value. When a subscriber signs up for
    # or is assigned this product/component, the feature catalog item is
    # provisioned as an entitlement on their subscription.
    # @return [FeatureCatalogItem]
    attr_accessor :feature

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['feature'] = 'feature'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(feature:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @feature = feature
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      feature = FeatureCatalogItem.from_hash(hash['feature']) if hash['feature']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      FeatureCatalogItemResponse.new(feature: feature,
                                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} feature: #{@feature}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} feature: #{@feature.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
