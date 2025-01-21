# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # UpdateReasonCode Model.
  class UpdateReasonCode < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The unique identifier for the ReasonCode
    # @return [String]
    attr_accessor :code

    # The friendly summary of what the code signifies
    # @return [String]
    attr_accessor :description

    # The order that code appears in lists
    # @return [Integer]
    attr_accessor :position

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['description'] = 'description'
      @_hash['position'] = 'position'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        code
        description
        position
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(code: SKIP, description: SKIP, position: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @code = code unless code == SKIP
      @description = description unless description == SKIP
      @position = position unless position == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash.key?('code') ? hash['code'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      position = hash.key?('position') ? hash['position'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      UpdateReasonCode.new(code: code,
                           description: description,
                           position: position,
                           additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} code: #{@code}, description: #{@description}, position: #{@position},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} code: #{@code.inspect}, description: #{@description.inspect}, position:"\
      " #{@position.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
