# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # UpdateMetadataRequest Model.
  class UpdateMetadataRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [UpdateMetadata]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['metadata'] = 'metadata'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        metadata
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(metadata: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @metadata = metadata unless metadata == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      metadata = UpdateMetadata.from_hash(hash['metadata']) if hash['metadata']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdateMetadataRequest.new(metadata: metadata,
                                additional_properties: additional_properties)
    end
  end
end
