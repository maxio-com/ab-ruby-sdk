# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # EBBEvent Model.
  class EBBEvent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [ChargifyEBB]
    attr_accessor :chargify

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['chargify'] = 'chargify'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        chargify
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(chargify: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @chargify = chargify unless chargify == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      chargify = ChargifyEBB.from_hash(hash['chargify']) if hash['chargify']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      EBBEvent.new(chargify: chargify,
                   additional_properties: additional_properties)
    end
  end
end
