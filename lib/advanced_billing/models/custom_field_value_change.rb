# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CustomFieldValueChange Model.
  class CustomFieldValueChange < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :event_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :metafield_name

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :metafield_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :old_value

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :new_value

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :resource_type

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :resource_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['event_type'] = 'event_type'
      @_hash['metafield_name'] = 'metafield_name'
      @_hash['metafield_id'] = 'metafield_id'
      @_hash['old_value'] = 'old_value'
      @_hash['new_value'] = 'new_value'
      @_hash['resource_type'] = 'resource_type'
      @_hash['resource_id'] = 'resource_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      %w[
        old_value
        new_value
      ]
    end

    def initialize(event_type:, metafield_name:, metafield_id:, old_value:,
                   new_value:, resource_type:, resource_id:,
                   additional_properties = nil)
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @event_type = event_type
      @metafield_name = metafield_name
      @metafield_id = metafield_id
      @old_value = old_value
      @new_value = new_value
      @resource_type = resource_type
      @resource_id = resource_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      event_type = hash.key?('event_type') ? hash['event_type'] : nil
      metafield_name =
        hash.key?('metafield_name') ? hash['metafield_name'] : nil
      metafield_id = hash.key?('metafield_id') ? hash['metafield_id'] : nil
      old_value = hash.key?('old_value') ? hash['old_value'] : nil
      new_value = hash.key?('new_value') ? hash['new_value'] : nil
      resource_type = hash.key?('resource_type') ? hash['resource_type'] : nil
      resource_id = hash.key?('resource_id') ? hash['resource_id'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CustomFieldValueChange.new(event_type: event_type,
                                 metafield_name: metafield_name,
                                 metafield_id: metafield_id,
                                 old_value: old_value,
                                 new_value: new_value,
                                 resource_type: resource_type,
                                 resource_id: resource_id,
                                 additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CustomFieldValueChange | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.event_type,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.metafield_name,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.metafield_id,
                                  ->(val) { val.instance_of? Integer }) and
            APIHelper.valid_type?(value.old_value,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.new_value,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.resource_type,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.resource_id,
                                  ->(val) { val.instance_of? Integer })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['event_type'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['metafield_name'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['metafield_id'],
                                ->(val) { val.instance_of? Integer }) and
          APIHelper.valid_type?(value['old_value'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['new_value'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['resource_type'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['resource_id'],
                                ->(val) { val.instance_of? Integer })
      )
    end
  end
end
