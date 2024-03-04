# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # UpdateMetafieldsRequest Model.
  class UpdateMetafieldsRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :metafields

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['metafields'] = 'metafields'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        metafields
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(metafields = SKIP,
                   additional_properties = {})
      @metafields = metafields unless metafields == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      metafields = hash.key?('metafields') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:UpdateMetafieldsRequestMetafields), hash['metafields']
      ) : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      UpdateMetafieldsRequest.new(metafields,
                                  hash)
    end

    # Validates an instance of the object from a given value.
    # @param [UpdateMetafieldsRequest | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
