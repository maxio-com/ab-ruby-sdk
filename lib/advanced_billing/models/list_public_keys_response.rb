# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # ListPublicKeysResponse Model.
  class ListPublicKeysResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[PublicKey]]
    attr_accessor :chargify_js_keys

    # TODO: Write general description for this method
    # @return [ListPublicKeysMeta]
    attr_accessor :meta

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['chargify_js_keys'] = 'chargify_js_keys'
      @_hash['meta'] = 'meta'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        chargify_js_keys
        meta
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(chargify_js_keys: SKIP, meta: SKIP,
                   additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @chargify_js_keys = chargify_js_keys unless chargify_js_keys == SKIP
      @meta = meta unless meta == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      chargify_js_keys = nil
      unless hash['chargify_js_keys'].nil?
        chargify_js_keys = []
        hash['chargify_js_keys'].each do |structure|
          chargify_js_keys << (PublicKey.from_hash(structure) if structure)
        end
      end

      chargify_js_keys = SKIP unless hash.key?('chargify_js_keys')
      meta = ListPublicKeysMeta.from_hash(hash['meta']) if hash['meta']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ListPublicKeysResponse.new(chargify_js_keys: chargify_js_keys,
                                 meta: meta,
                                 additional_properties: additional_properties)
    end
  end
end
