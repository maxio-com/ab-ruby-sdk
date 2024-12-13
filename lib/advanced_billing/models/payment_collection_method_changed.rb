# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PaymentCollectionMethodChanged Model.
  class PaymentCollectionMethodChanged < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :previous_value

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :current_value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['previous_value'] = 'previous_value'
      @_hash['current_value'] = 'current_value'
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

    def initialize(previous_value:, current_value:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @previous_value = previous_value
      @current_value = current_value
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      previous_value =
        hash.key?('previous_value') ? hash['previous_value'] : nil
      current_value = hash.key?('current_value') ? hash['current_value'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PaymentCollectionMethodChanged.new(previous_value: previous_value,
                                         current_value: current_value,
                                         additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [PaymentCollectionMethodChanged | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.previous_value,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.current_value,
                                  ->(val) { val.instance_of? String })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['previous_value'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['current_value'],
                                ->(val) { val.instance_of? String })
      )
    end
  end
end
