# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # FeatureCatalogItemsListResponse Model.
  class FeatureCatalogItemsListResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[FeatureCatalogItem]]
    attr_accessor :features

    # The number of subscriptions on this product/component that would be
    # affected if a feature catalog item change were propagated with
    # `propagate_to_subscriptions=true`.
    # @return [Integer]
    attr_accessor :subscriptions_count

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['features'] = 'features'
      @_hash['subscriptions_count'] = 'subscriptions_count'
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

    def initialize(features:, subscriptions_count:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @features = features
      @subscriptions_count = subscriptions_count
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      features = nil
      unless hash['features'].nil?
        features = []
        hash['features'].each do |structure|
          features << (FeatureCatalogItem.from_hash(structure) if structure)
        end
      end

      features = nil unless hash.key?('features')
      subscriptions_count =
        hash.key?('subscriptions_count') ? hash['subscriptions_count'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      FeatureCatalogItemsListResponse.new(features: features,
                                          subscriptions_count: subscriptions_count,
                                          additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} features: #{@features}, subscriptions_count: #{@subscriptions_count},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} features: #{@features.inspect}, subscriptions_count:"\
      " #{@subscriptions_count.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
