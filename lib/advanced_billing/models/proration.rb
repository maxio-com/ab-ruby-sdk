# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Proration Model.
  class Proration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The alternative to sending preserve_period as a direct attribute to
    # migration
    # @return [TrueClass | FalseClass]
    attr_accessor :preserve_period

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['preserve_period'] = 'preserve_period'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        preserve_period
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(preserve_period: SKIP, additional_properties: {})
      @preserve_period = preserve_period unless preserve_period == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      preserve_period =
        hash.key?('preserve_period') ? hash['preserve_period'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      Proration.new(preserve_period: preserve_period,
                    additional_properties: hash)
    end
  end
end
