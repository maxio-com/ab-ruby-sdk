# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

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

    def initialize(metafields: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @metafields = metafields unless metafields == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      metafields = hash.key?('metafields') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:UpdateMetafieldsRequestMetafields), hash['metafields']
      ) : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdateMetafieldsRequest.new(metafields: metafields,
                                  additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [UpdateMetafieldsRequest | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} metafields: #{@metafields}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} metafields: #{@metafields.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
