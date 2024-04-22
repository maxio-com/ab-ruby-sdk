# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # DunningStepReached Model.
  class DunningStepReached < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [DunnerData]
    attr_accessor :dunner

    # TODO: Write general description for this method
    # @return [DunningStepData]
    attr_accessor :current_step

    # TODO: Write general description for this method
    # @return [DunningStepData]
    attr_accessor :next_step

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['dunner'] = 'dunner'
      @_hash['current_step'] = 'current_step'
      @_hash['next_step'] = 'next_step'
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

    def initialize(dunner = nil,
                   current_step = nil,
                   next_step = nil,
                   additional_properties = {})
      @dunner = dunner
      @current_step = current_step
      @next_step = next_step

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      dunner = DunnerData.from_hash(hash['dunner']) if hash['dunner']
      current_step = DunningStepData.from_hash(hash['current_step']) if hash['current_step']
      next_step = DunningStepData.from_hash(hash['next_step']) if hash['next_step']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      DunningStepReached.new(dunner,
                             current_step,
                             next_step,
                             hash)
    end

    # Validates an instance of the object from a given value.
    # @param [DunningStepReached | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.dunner,
                                ->(val) { DunnerData.validate(val) },
                                is_model_hash: true) and
            APIHelper.valid_type?(value.current_step,
                                  ->(val) { DunningStepData.validate(val) },
                                  is_model_hash: true) and
            APIHelper.valid_type?(value.next_step,
                                  ->(val) { DunningStepData.validate(val) },
                                  is_model_hash: true)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['dunner'],
                              ->(val) { DunnerData.validate(val) },
                              is_model_hash: true) and
          APIHelper.valid_type?(value['current_step'],
                                ->(val) { DunningStepData.validate(val) },
                                is_model_hash: true) and
          APIHelper.valid_type?(value['next_step'],
                                ->(val) { DunningStepData.validate(val) },
                                is_model_hash: true)
      )
    end
  end
end
