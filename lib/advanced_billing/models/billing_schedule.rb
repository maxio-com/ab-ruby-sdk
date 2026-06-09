# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Billing schedule settings for component allocations or usages on
  # multi-frequency subscriptions. Use this to start a component's billing
  # period on a custom date instead of aligning with the product charge
  # schedule.
  class BillingSchedule < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Custom start date (ISO 8601 date, YYYY-MM-DD) for the component's first
    # billing period. If omitted or null, billing aligns with the product
    # schedule. If provided, date must be on or after the minimum allowed date
    # for the subscription or component.
    # @return [Date]
    attr_accessor :initial_billing_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['initial_billing_at'] = 'initial_billing_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        initial_billing_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        initial_billing_at
      ]
    end

    def initialize(initial_billing_at: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @initial_billing_at = initial_billing_at unless initial_billing_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      initial_billing_at =
        hash.key?('initial_billing_at') ? hash['initial_billing_at'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      BillingSchedule.new(initial_billing_at: initial_billing_at,
                          additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [BillingSchedule | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} initial_billing_at: #{@initial_billing_at}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} initial_billing_at: #{@initial_billing_at.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
