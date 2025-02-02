# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CancellationOptions Model.
  class CancellationOptions < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # For your internal use. An indication as to why the subscription is being
    # canceled.
    # @return [String]
    attr_accessor :cancellation_message

    # The reason code associated with the cancellation. See the list of reason
    # codes associated with your site.
    # @return [String]
    attr_accessor :reason_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['cancellation_message'] = 'cancellation_message'
      @_hash['reason_code'] = 'reason_code'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        cancellation_message
        reason_code
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(cancellation_message: SKIP, reason_code: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @cancellation_message = cancellation_message unless cancellation_message == SKIP
      @reason_code = reason_code unless reason_code == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      cancellation_message =
        hash.key?('cancellation_message') ? hash['cancellation_message'] : SKIP
      reason_code = hash.key?('reason_code') ? hash['reason_code'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CancellationOptions.new(cancellation_message: cancellation_message,
                              reason_code: reason_code,
                              additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} cancellation_message: #{@cancellation_message}, reason_code:"\
      " #{@reason_code}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} cancellation_message: #{@cancellation_message.inspect}, reason_code:"\
      " #{@reason_code.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
