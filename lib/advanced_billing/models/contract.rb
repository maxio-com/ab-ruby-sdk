# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Contract linked to the scheduled renewal configuration.
  class Contract < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :maxio_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :number

    # TODO: Write general description for this method
    # @return [Register]
    attr_accessor :register

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['maxio_id'] = 'maxio_id'
      @_hash['number'] = 'number'
      @_hash['register'] = 'register'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        maxio_id
        number
        register
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        number
      ]
    end

    def initialize(id: SKIP, maxio_id: SKIP, number: SKIP, register: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @maxio_id = maxio_id unless maxio_id == SKIP
      @number = number unless number == SKIP
      @register = register unless register == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      maxio_id = hash.key?('maxio_id') ? hash['maxio_id'] : SKIP
      number = hash.key?('number') ? hash['number'] : SKIP
      register = Register.from_hash(hash['register']) if hash['register']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Contract.new(id: id,
                   maxio_id: maxio_id,
                   number: number,
                   register: register,
                   additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, maxio_id: #{@maxio_id}, number: #{@number}, register:"\
      " #{@register}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, maxio_id: #{@maxio_id.inspect}, number:"\
      " #{@number.inspect}, register: #{@register.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
