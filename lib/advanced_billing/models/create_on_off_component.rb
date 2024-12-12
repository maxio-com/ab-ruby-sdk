# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateOnOffComponent Model.
  class CreateOnOffComponent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [OnOffComponent]
    attr_accessor :on_off_component

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['on_off_component'] = 'on_off_component'
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

    def initialize(on_off_component:, additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @on_off_component = on_off_component
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      on_off_component = OnOffComponent.from_hash(hash['on_off_component']) if
        hash['on_off_component']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateOnOffComponent.new(on_off_component: on_off_component,
                               additional_properties: additional_properties)
    end
  end
end
