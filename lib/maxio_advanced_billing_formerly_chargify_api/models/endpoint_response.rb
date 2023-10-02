# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # EndpointResponse Model.
  class EndpointResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Endpoint]
    attr_accessor :endpoint

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['endpoint'] = 'endpoint'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        endpoint
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(endpoint = SKIP)
      @endpoint = endpoint unless endpoint == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      endpoint = Endpoint.from_hash(hash['endpoint']) if hash['endpoint']

      # Create object from extracted values.
      EndpointResponse.new(endpoint)
    end
  end
end
