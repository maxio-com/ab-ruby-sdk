# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # FeatureTemplatesListResponse Model.
  class FeatureTemplatesListResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[FeatureTemplate]]
    attr_accessor :items

    # Total number of feature templates matching the filters, across all pages.
    # @return [Integer]
    attr_accessor :total_count

    # Number of archived feature templates matching the filters. Returned as `0`
    # unless the active result set is empty or `status=archived` was requested.
    # @return [Integer]
    attr_accessor :archived_count

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['items'] = 'items'
      @_hash['total_count'] = 'total_count'
      @_hash['archived_count'] = 'archived_count'
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

    def initialize(items:, total_count:, archived_count:,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @items = items
      @total_count = total_count
      @archived_count = archived_count
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (FeatureTemplate.from_hash(structure) if structure)
        end
      end

      items = nil unless hash.key?('items')
      total_count = hash.key?('total_count') ? hash['total_count'] : nil
      archived_count =
        hash.key?('archived_count') ? hash['archived_count'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      FeatureTemplatesListResponse.new(items: items,
                                       total_count: total_count,
                                       archived_count: archived_count,
                                       additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} items: #{@items}, total_count: #{@total_count}, archived_count:"\
      " #{@archived_count}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} items: #{@items.inspect}, total_count: #{@total_count.inspect},"\
      " archived_count: #{@archived_count.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
