# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # AddSubscriptionToAGroup Model.
  class AddSubscriptionToAGroup < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [GroupSettings]
    attr_accessor :group

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['group'] = 'group'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        group
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(group: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @group = group unless group == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      group = GroupSettings.from_hash(hash['group']) if hash['group']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      AddSubscriptionToAGroup.new(group: group,
                                  additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} group: #{@group}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} group: #{@group.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
