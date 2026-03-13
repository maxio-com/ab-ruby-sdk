# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ScheduledRenewalLockInRequest Model.
  class ScheduledRenewalLockInRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Date to lock in the renewal.
    # @return [Date]
    attr_accessor :lock_in_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['lock_in_at'] = 'lock_in_at'
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

    def initialize(lock_in_at:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @lock_in_at = lock_in_at
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      lock_in_at = hash.key?('lock_in_at') ? hash['lock_in_at'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ScheduledRenewalLockInRequest.new(lock_in_at: lock_in_at,
                                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} lock_in_at: #{@lock_in_at}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} lock_in_at: #{@lock_in_at.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
