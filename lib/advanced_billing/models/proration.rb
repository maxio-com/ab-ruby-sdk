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
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @preserve_period = preserve_period unless preserve_period == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      preserve_period =
        hash.key?('preserve_period') ? hash['preserve_period'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Proration.new(preserve_period: preserve_period,
                    additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} preserve_period: #{@preserve_period}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} preserve_period: #{@preserve_period.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
