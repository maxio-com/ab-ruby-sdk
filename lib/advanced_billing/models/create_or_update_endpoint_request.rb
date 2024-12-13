# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Used to Create or Update Endpoint
  class CreateOrUpdateEndpointRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Used to Create or Update Endpoint
    # @return [CreateOrUpdateEndpoint]
    attr_accessor :endpoint

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['endpoint'] = 'endpoint'
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

    def initialize(endpoint:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @endpoint = endpoint
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      endpoint = CreateOrUpdateEndpoint.from_hash(hash['endpoint']) if hash['endpoint']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateOrUpdateEndpointRequest.new(endpoint: endpoint,
                                        additional_properties: additional_properties)
    end
  end
end
