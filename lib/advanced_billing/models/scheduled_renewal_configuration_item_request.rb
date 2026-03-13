# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ScheduledRenewalConfigurationItemRequest Model.
  class ScheduledRenewalConfigurationItemRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :renewal_configuration_item

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['renewal_configuration_item'] = 'renewal_configuration_item'
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

    def initialize(renewal_configuration_item:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @renewal_configuration_item = renewal_configuration_item
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      renewal_configuration_item = hash.key?('renewal_configuration_item') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:ScheduledRenewalConfigurationItemRequestRenewalConfigurationItem), hash['renewal_configuration_item']
      ) : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ScheduledRenewalConfigurationItemRequest.new(renewal_configuration_item: renewal_configuration_item,
                                                   additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [ScheduledRenewalConfigurationItemRequest | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return UnionTypeLookUp.get(:ScheduledRenewalConfigurationItemRequestRenewalConfigurationItem)
                              .validate(value.renewal_configuration_item)
      end

      return false unless value.instance_of? Hash

      UnionTypeLookUp.get(:ScheduledRenewalConfigurationItemRequestRenewalConfigurationItem)
                     .validate(value['renewal_configuration_item'])
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} renewal_configuration_item: #{@renewal_configuration_item},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} renewal_configuration_item: #{@renewal_configuration_item.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
