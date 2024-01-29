# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CreateMetafield Model.
  class CreateMetafield < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # Warning: When updating a metafield's scope attribute, all scope attributes
    # must be passed. Partially complete scope attributes will override the
    # existing settings.
    # @return [MetafieldScope]
    attr_accessor :scope

    # Indicates how data should be added to the metafield. For example, a text
    # type is just a string, so a given metafield of this type can have any
    # value attached. On the other hand, dropdown and radio have a set of
    # allowed values that can be input, and appear differently on a Public
    # Signup Page. Defaults to 'text'
    # @return [MetafieldInput]
    attr_accessor :input_type

    # Only applicable when input_type is radio or dropdown
    # @return [Array[String]]
    attr_accessor :enum

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['scope'] = 'scope'
      @_hash['input_type'] = 'input_type'
      @_hash['enum'] = 'enum'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        name
        scope
        input_type
        enum
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(name = SKIP,
                   scope = SKIP,
                   input_type = SKIP,
                   enum = SKIP)
      @name = name unless name == SKIP
      @scope = scope unless scope == SKIP
      @input_type = input_type unless input_type == SKIP
      @enum = enum unless enum == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : SKIP
      scope = MetafieldScope.from_hash(hash['scope']) if hash['scope']
      input_type = hash.key?('input_type') ? hash['input_type'] : SKIP
      enum = hash.key?('enum') ? hash['enum'] : SKIP

      # Create object from extracted values.
      CreateMetafield.new(name,
                          scope,
                          input_type,
                          enum)
    end

    # Validates an instance of the object from a given value.
    # @param [CreateMetafield | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
