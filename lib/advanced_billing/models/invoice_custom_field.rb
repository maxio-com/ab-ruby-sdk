# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # InvoiceCustomField Model.
  class InvoiceCustomField < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :owner_id

    # TODO: Write general description for this method
    # @return [CustomFieldOwner]
    attr_accessor :owner_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :value

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :metadatum_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['owner_id'] = 'owner_id'
      @_hash['owner_type'] = 'owner_type'
      @_hash['name'] = 'name'
      @_hash['value'] = 'value'
      @_hash['metadatum_id'] = 'metadatum_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        owner_id
        owner_type
        name
        value
        metadatum_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(owner_id: SKIP, owner_type: SKIP, name: SKIP, value: SKIP,
                   metadatum_id: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @owner_id = owner_id unless owner_id == SKIP
      @owner_type = owner_type unless owner_type == SKIP
      @name = name unless name == SKIP
      @value = value unless value == SKIP
      @metadatum_id = metadatum_id unless metadatum_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      owner_id = hash.key?('owner_id') ? hash['owner_id'] : SKIP
      owner_type = hash.key?('owner_type') ? hash['owner_type'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      value = hash.key?('value') ? hash['value'] : SKIP
      metadatum_id = hash.key?('metadatum_id') ? hash['metadatum_id'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      InvoiceCustomField.new(owner_id: owner_id,
                             owner_type: owner_type,
                             name: name,
                             value: value,
                             metadatum_id: metadatum_id,
                             additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [InvoiceCustomField | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} owner_id: #{@owner_id}, owner_type: #{@owner_type}, name: #{@name}, value:"\
      " #{@value}, metadatum_id: #{@metadatum_id}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} owner_id: #{@owner_id.inspect}, owner_type: #{@owner_type.inspect}, name:"\
      " #{@name.inspect}, value: #{@value.inspect}, metadatum_id: #{@metadatum_id.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
