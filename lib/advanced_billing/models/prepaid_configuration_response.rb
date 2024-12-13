# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PrepaidConfigurationResponse Model.
  class PrepaidConfigurationResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [PrepaidConfiguration]
    attr_accessor :prepaid_configuration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['prepaid_configuration'] = 'prepaid_configuration'
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

    def initialize(prepaid_configuration:, additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @prepaid_configuration = prepaid_configuration
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      prepaid_configuration = PrepaidConfiguration.from_hash(hash['prepaid_configuration']) if
        hash['prepaid_configuration']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PrepaidConfigurationResponse.new(prepaid_configuration: prepaid_configuration,
                                       additional_properties: additional_properties)
    end
  end
end
