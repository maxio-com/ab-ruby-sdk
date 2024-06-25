# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Example schema for an `change_chargeback_status` event
  class ChangeChargebackStatusEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [ChargebackStatus]
    attr_accessor :chargeback_status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['chargeback_status'] = 'chargeback_status'
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

    def initialize(chargeback_status:, additional_properties: {})
      @chargeback_status = chargeback_status

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      chargeback_status =
        hash.key?('chargeback_status') ? hash['chargeback_status'] : nil

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ChangeChargebackStatusEventData.new(chargeback_status: chargeback_status,
                                          additional_properties: hash)
    end

    # Validates an instance of the object from a given value.
    # @param [ChangeChargebackStatusEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.chargeback_status,
                                     ->(val) { ChargebackStatus.validate(val) })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['chargeback_status'],
                            ->(val) { ChargebackStatus.validate(val) })
    end
  end
end