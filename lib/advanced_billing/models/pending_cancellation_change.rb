# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # PendingCancellationChange Model.
  class PendingCancellationChange < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :cancellation_state

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :cancels_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['cancellation_state'] = 'cancellation_state'
      @_hash['cancels_at'] = 'cancels_at'
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

    def initialize(cancellation_state:, cancels_at:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @cancellation_state = cancellation_state
      @cancels_at = cancels_at
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      cancellation_state =
        hash.key?('cancellation_state') ? hash['cancellation_state'] : nil
      cancels_at = if hash.key?('cancels_at')
                     (DateTimeHelper.from_rfc3339(hash['cancels_at']) if hash['cancels_at'])
                   end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PendingCancellationChange.new(cancellation_state: cancellation_state,
                                    cancels_at: cancels_at,
                                    additional_properties: additional_properties)
    end

    def to_custom_cancels_at
      DateTimeHelper.to_rfc3339(cancels_at)
    end

    # Validates an instance of the object from a given value.
    # @param [PendingCancellationChange | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.cancellation_state,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.cancels_at,
                                  ->(val) { val.instance_of? DateTime })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['cancellation_state'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['cancels_at'],
                                ->(val) { val.instance_of? String })
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} cancellation_state: #{@cancellation_state}, cancels_at: #{@cancels_at},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} cancellation_state: #{@cancellation_state.inspect}, cancels_at:"\
      " #{@cancels_at.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
