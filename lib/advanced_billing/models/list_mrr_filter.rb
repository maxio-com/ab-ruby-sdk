# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ListMrrFilter Model.
  class ListMrrFilter < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Submit ids in order to limit results. Use in query:
    # `filter[subscription_ids]=1,2,3`.
    # @return [Array[Integer]]
    attr_accessor :subscription_ids

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscription_ids'] = 'subscription_ids'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        subscription_ids
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(subscription_ids: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @subscription_ids = subscription_ids unless subscription_ids == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subscription_ids =
        hash.key?('subscription_ids') ? hash['subscription_ids'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ListMrrFilter.new(subscription_ids: subscription_ids,
                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} subscription_ids: #{@subscription_ids}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} subscription_ids: #{@subscription_ids.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
