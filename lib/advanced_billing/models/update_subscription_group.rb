# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # UpdateSubscriptionGroup Model.
  class UpdateSubscriptionGroup < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[Integer]]
    attr_accessor :member_ids

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['member_ids'] = 'member_ids'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        member_ids
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(member_ids: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @member_ids = member_ids unless member_ids == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      member_ids = hash.key?('member_ids') ? hash['member_ids'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdateSubscriptionGroup.new(member_ids: member_ids,
                                  additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} member_ids: #{@member_ids}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} member_ids: #{@member_ids.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
