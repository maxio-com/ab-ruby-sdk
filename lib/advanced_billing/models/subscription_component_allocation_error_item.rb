# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # SubscriptionComponentAllocationErrorItem Model.
  class SubscriptionComponentAllocationErrorItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :kind

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['kind'] = 'kind'
      @_hash['message'] = 'message'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        kind
        message
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(kind: SKIP, message: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @kind = kind unless kind == SKIP
      @message = message unless message == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      kind = hash.key?('kind') ? hash['kind'] : SKIP
      message = hash.key?('message') ? hash['message'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionComponentAllocationErrorItem.new(kind: kind,
                                                   message: message,
                                                   additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} kind: #{@kind}, message: #{@message}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} kind: #{@kind.inspect}, message: #{@message.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
