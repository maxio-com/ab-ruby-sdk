# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # CloneComponentPricePoint Model.
  class CloneComponentPricePoint < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :handle

    # The features the clone gets. The clone does not copy the source price
    # point's features, so send every feature it should have.
    # @return [Array[CloneFeatureCatalogItem]]
    attr_accessor :feature_catalog_items

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['feature_catalog_items'] = 'feature_catalog_items'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        handle
        feature_catalog_items
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name:, handle: SKIP, feature_catalog_items: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @name = name
      @handle = handle unless handle == SKIP
      @feature_catalog_items = feature_catalog_items unless feature_catalog_items == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      # Parameter is an array, so we need to iterate through it
      feature_catalog_items = nil
      unless hash['feature_catalog_items'].nil?
        feature_catalog_items = []
        hash['feature_catalog_items'].each do |structure|
          feature_catalog_items << (CloneFeatureCatalogItem.from_hash(structure) if structure)
        end
      end

      feature_catalog_items = SKIP unless hash.key?('feature_catalog_items')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CloneComponentPricePoint.new(name: name,
                                   handle: handle,
                                   feature_catalog_items: feature_catalog_items,
                                   additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, handle: #{@handle}, feature_catalog_items:"\
      " #{@feature_catalog_items}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, handle: #{@handle.inspect}, feature_catalog_items:"\
      " #{@feature_catalog_items.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
