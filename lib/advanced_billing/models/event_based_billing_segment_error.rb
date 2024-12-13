# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # EventBasedBillingSegmentError Model.
  class EventBasedBillingSegmentError < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The key of the object would be a number (an index in the request array)
    # where the error occurred. In the value object, the key represents the
    # field and the value is an array with error messages. In most cases, this
    # object would contain just one key.
    # @return [Hash[String, Object]]
    attr_accessor :segments

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['segments'] = 'segments'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(segments:, additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @segments = segments
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      segments = hash.key?('segments') ? hash['segments'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      EventBasedBillingSegmentError.new(segments: segments,
                                        additional_properties: additional_properties)
    end
  end
end
