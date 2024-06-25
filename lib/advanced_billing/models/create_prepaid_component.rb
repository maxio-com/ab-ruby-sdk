# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreatePrepaidComponent Model.
  class CreatePrepaidComponent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [PrepaidUsageComponent]
    attr_accessor :prepaid_usage_component

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['prepaid_usage_component'] = 'prepaid_usage_component'
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

    def initialize(prepaid_usage_component:, additional_properties: {})
      @prepaid_usage_component = prepaid_usage_component

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      prepaid_usage_component = PrepaidUsageComponent.from_hash(hash['prepaid_usage_component']) if
        hash['prepaid_usage_component']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      CreatePrepaidComponent.new(prepaid_usage_component: prepaid_usage_component,
                                 additional_properties: hash)
    end
  end
end
