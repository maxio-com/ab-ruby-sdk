# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # TaxConfiguration Model.
  class TaxConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [TaxConfigurationKind]
    attr_accessor :kind

    # TODO: Write general description for this method
    # @return [TaxDestinationAddress]
    attr_accessor :destination_address

    # Returns `true` when Chargify has been properly configured to charge tax
    # using the specified tax system. More details about taxes:
    # https://maxio.zendesk.com/hc/en-us/articles/24287012608909-Taxes-Overview
    # @return [TrueClass | FalseClass]
    attr_accessor :fully_configured

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['kind'] = 'kind'
      @_hash['destination_address'] = 'destination_address'
      @_hash['fully_configured'] = 'fully_configured'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        kind
        destination_address
        fully_configured
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(kind: TaxConfigurationKind::CUSTOM,
                   destination_address: SKIP, fully_configured: false,
                   additional_properties: {})
      @kind = kind unless kind == SKIP
      @destination_address = destination_address unless destination_address == SKIP
      @fully_configured = fully_configured unless fully_configured == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      kind = hash['kind'] ||= TaxConfigurationKind::CUSTOM
      destination_address =
        hash.key?('destination_address') ? hash['destination_address'] : SKIP
      fully_configured = hash['fully_configured'] ||= false

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      TaxConfiguration.new(kind: kind,
                           destination_address: destination_address,
                           fully_configured: fully_configured,
                           additional_properties: hash)
    end
  end
end
