# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Optional for Event Based Components. If the `include=historic_usages` query
  # param is provided, the last ten billing periods will be returned.
  class HistoricUsage < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Total usage of a component for billing period
    # @return [Float]
    attr_accessor :total_usage_quantity

    # Start date of billing period
    # @return [DateTime]
    attr_accessor :billing_period_starts_at

    # End date of billing period
    # @return [DateTime]
    attr_accessor :billing_period_ends_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['total_usage_quantity'] = 'total_usage_quantity'
      @_hash['billing_period_starts_at'] = 'billing_period_starts_at'
      @_hash['billing_period_ends_at'] = 'billing_period_ends_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        total_usage_quantity
        billing_period_starts_at
        billing_period_ends_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(total_usage_quantity: SKIP, billing_period_starts_at: SKIP,
                   billing_period_ends_at: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @total_usage_quantity = total_usage_quantity unless total_usage_quantity == SKIP
      @billing_period_starts_at = billing_period_starts_at unless billing_period_starts_at == SKIP
      @billing_period_ends_at = billing_period_ends_at unless billing_period_ends_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      total_usage_quantity =
        hash.key?('total_usage_quantity') ? hash['total_usage_quantity'] : SKIP
      billing_period_starts_at = if hash.key?('billing_period_starts_at')
                                   (DateTimeHelper.from_rfc3339(hash['billing_period_starts_at']) if hash['billing_period_starts_at'])
                                 else
                                   SKIP
                                 end
      billing_period_ends_at = if hash.key?('billing_period_ends_at')
                                 (DateTimeHelper.from_rfc3339(hash['billing_period_ends_at']) if hash['billing_period_ends_at'])
                               else
                                 SKIP
                               end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      HistoricUsage.new(total_usage_quantity: total_usage_quantity,
                        billing_period_starts_at: billing_period_starts_at,
                        billing_period_ends_at: billing_period_ends_at,
                        additional_properties: additional_properties)
    end

    def to_custom_billing_period_starts_at
      DateTimeHelper.to_rfc3339(billing_period_starts_at)
    end

    def to_custom_billing_period_ends_at
      DateTimeHelper.to_rfc3339(billing_period_ends_at)
    end

    # Validates an instance of the object from a given value.
    # @param [HistoricUsage | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} total_usage_quantity: #{@total_usage_quantity}, billing_period_starts_at:"\
      " #{@billing_period_starts_at}, billing_period_ends_at: #{@billing_period_ends_at},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} total_usage_quantity: #{@total_usage_quantity.inspect},"\
      " billing_period_starts_at: #{@billing_period_starts_at.inspect}, billing_period_ends_at:"\
      " #{@billing_period_ends_at.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
