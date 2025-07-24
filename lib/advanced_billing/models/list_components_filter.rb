# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ListComponentsFilter Model.
  class ListComponentsFilter < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Allows fetching components with matching id based on provided value. Use
    # in query `filter[ids]=1,2,3`.
    # @return [Array[Integer]]
    attr_accessor :ids

    # Allows fetching components with matching use_site_exchange_rate based on
    # provided value (refers to default price point). Use in query
    # `filter[use_site_exchange_rate]=true`.
    # @return [TrueClass | FalseClass]
    attr_accessor :use_site_exchange_rate

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ids'] = 'ids'
      @_hash['use_site_exchange_rate'] = 'use_site_exchange_rate'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        ids
        use_site_exchange_rate
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(ids: SKIP, use_site_exchange_rate: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @ids = ids unless ids == SKIP
      @use_site_exchange_rate = use_site_exchange_rate unless use_site_exchange_rate == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ids = hash.key?('ids') ? hash['ids'] : SKIP
      use_site_exchange_rate =
        hash.key?('use_site_exchange_rate') ? hash['use_site_exchange_rate'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ListComponentsFilter.new(ids: ids,
                               use_site_exchange_rate: use_site_exchange_rate,
                               additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} ids: #{@ids}, use_site_exchange_rate: #{@use_site_exchange_rate},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} ids: #{@ids.inspect}, use_site_exchange_rate:"\
      " #{@use_site_exchange_rate.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
