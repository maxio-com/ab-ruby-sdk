# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Breakouts Model.
  class Breakouts < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :plan_amount_in_cents

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :plan_amount_formatted

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :usage_amount_in_cents

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :usage_amount_formatted

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['plan_amount_in_cents'] = 'plan_amount_in_cents'
      @_hash['plan_amount_formatted'] = 'plan_amount_formatted'
      @_hash['usage_amount_in_cents'] = 'usage_amount_in_cents'
      @_hash['usage_amount_formatted'] = 'usage_amount_formatted'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        plan_amount_in_cents
        plan_amount_formatted
        usage_amount_in_cents
        usage_amount_formatted
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(plan_amount_in_cents: SKIP, plan_amount_formatted: SKIP,
                   usage_amount_in_cents: SKIP, usage_amount_formatted: SKIP,
                   additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @plan_amount_in_cents = plan_amount_in_cents unless plan_amount_in_cents == SKIP
      @plan_amount_formatted = plan_amount_formatted unless plan_amount_formatted == SKIP
      @usage_amount_in_cents = usage_amount_in_cents unless usage_amount_in_cents == SKIP
      @usage_amount_formatted = usage_amount_formatted unless usage_amount_formatted == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      plan_amount_in_cents =
        hash.key?('plan_amount_in_cents') ? hash['plan_amount_in_cents'] : SKIP
      plan_amount_formatted =
        hash.key?('plan_amount_formatted') ? hash['plan_amount_formatted'] : SKIP
      usage_amount_in_cents =
        hash.key?('usage_amount_in_cents') ? hash['usage_amount_in_cents'] : SKIP
      usage_amount_formatted =
        hash.key?('usage_amount_formatted') ? hash['usage_amount_formatted'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Breakouts.new(plan_amount_in_cents: plan_amount_in_cents,
                    plan_amount_formatted: plan_amount_formatted,
                    usage_amount_in_cents: usage_amount_in_cents,
                    usage_amount_formatted: usage_amount_formatted,
                    additional_properties: additional_properties)
    end
  end
end
