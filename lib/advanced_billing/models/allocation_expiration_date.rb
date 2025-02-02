# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # AllocationExpirationDate Model.
  class AllocationExpirationDate < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :expires_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['expires_at'] = 'expires_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        expires_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(expires_at: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @expires_at = expires_at unless expires_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      expires_at = if hash.key?('expires_at')
                     (DateTimeHelper.from_rfc3339(hash['expires_at']) if hash['expires_at'])
                   else
                     SKIP
                   end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      AllocationExpirationDate.new(expires_at: expires_at,
                                   additional_properties: additional_properties)
    end

    def to_custom_expires_at
      DateTimeHelper.to_rfc3339(expires_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} expires_at: #{@expires_at}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} expires_at: #{@expires_at.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
