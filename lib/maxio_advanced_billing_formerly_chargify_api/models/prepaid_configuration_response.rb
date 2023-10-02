# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
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

    def initialize(prepaid_configuration = nil)
      @prepaid_configuration = prepaid_configuration
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      prepaid_configuration = PrepaidConfiguration.from_hash(hash['prepaid_configuration']) if
        hash['prepaid_configuration']

      # Create object from extracted values.
      PrepaidConfigurationResponse.new(prepaid_configuration)
    end
  end
end
