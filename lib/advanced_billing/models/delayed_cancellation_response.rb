# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # DelayedCancellationResponse Model.
  class DelayedCancellationResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['message'] = 'message'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        message
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(message: SKIP, additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @message = message unless message == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      message = hash.key?('message') ? hash['message'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      DelayedCancellationResponse.new(message: message,
                                      additional_properties: additional_properties)
    end
  end
end
