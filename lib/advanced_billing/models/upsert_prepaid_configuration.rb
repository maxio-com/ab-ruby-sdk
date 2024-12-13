# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # UpsertPrepaidConfiguration Model.
  class UpsertPrepaidConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :initial_funding_amount_in_cents

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :replenish_to_amount_in_cents

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :auto_replenish

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :replenish_threshold_amount_in_cents

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['initial_funding_amount_in_cents'] =
        'initial_funding_amount_in_cents'
      @_hash['replenish_to_amount_in_cents'] = 'replenish_to_amount_in_cents'
      @_hash['auto_replenish'] = 'auto_replenish'
      @_hash['replenish_threshold_amount_in_cents'] =
        'replenish_threshold_amount_in_cents'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        initial_funding_amount_in_cents
        replenish_to_amount_in_cents
        auto_replenish
        replenish_threshold_amount_in_cents
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(initial_funding_amount_in_cents: SKIP,
                   replenish_to_amount_in_cents: SKIP, auto_replenish: SKIP,
                   replenish_threshold_amount_in_cents: SKIP,
                   additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      unless initial_funding_amount_in_cents == SKIP
        @initial_funding_amount_in_cents =
          initial_funding_amount_in_cents
      end
      unless replenish_to_amount_in_cents == SKIP
        @replenish_to_amount_in_cents =
          replenish_to_amount_in_cents
      end
      @auto_replenish = auto_replenish unless auto_replenish == SKIP
      unless replenish_threshold_amount_in_cents == SKIP
        @replenish_threshold_amount_in_cents =
          replenish_threshold_amount_in_cents
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      initial_funding_amount_in_cents =
        hash.key?('initial_funding_amount_in_cents') ? hash['initial_funding_amount_in_cents'] : SKIP
      replenish_to_amount_in_cents =
        hash.key?('replenish_to_amount_in_cents') ? hash['replenish_to_amount_in_cents'] : SKIP
      auto_replenish =
        hash.key?('auto_replenish') ? hash['auto_replenish'] : SKIP
      replenish_threshold_amount_in_cents =
        hash.key?('replenish_threshold_amount_in_cents') ? hash['replenish_threshold_amount_in_cents'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpsertPrepaidConfiguration.new(initial_funding_amount_in_cents: initial_funding_amount_in_cents,
                                     replenish_to_amount_in_cents: replenish_to_amount_in_cents,
                                     auto_replenish: auto_replenish,
                                     replenish_threshold_amount_in_cents: replenish_threshold_amount_in_cents,
                                     additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [UpsertPrepaidConfiguration | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
