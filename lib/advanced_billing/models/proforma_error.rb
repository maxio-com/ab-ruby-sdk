# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ProformaError Model.
  class ProformaError < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The error is base if it is not directly associated with a single
    # attribute.
    # @return [BaseStringError]
    attr_accessor :subscription

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscription'] = 'subscription'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        subscription
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(subscription: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @subscription = subscription unless subscription == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      subscription = BaseStringError.from_hash(hash['subscription']) if hash['subscription']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ProformaError.new(subscription: subscription,
                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} subscription: #{@subscription}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} subscription: #{@subscription.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
