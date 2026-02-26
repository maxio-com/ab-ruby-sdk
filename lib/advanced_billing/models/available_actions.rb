# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # AvailableActions Model.
  class AvailableActions < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [SendEmail]
    attr_accessor :send_email

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['send_email'] = 'send_email'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        send_email
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(send_email: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @send_email = send_email unless send_email == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      send_email = SendEmail.from_hash(hash['send_email']) if hash['send_email']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      AvailableActions.new(send_email: send_email,
                           additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} send_email: #{@send_email}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} send_email: #{@send_email.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
