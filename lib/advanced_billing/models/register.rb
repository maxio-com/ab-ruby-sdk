# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Register Model.
  class Register < BaseModel
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
    attr_accessor :name

    # The ISO 4217 currency code (3 character string) representing the currency
    # of an invoice transaction.
    # @return [String]
    attr_accessor :currency_code

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['maxio_id'] = 'maxio_id'
      @_hash['name'] = 'name'
      @_hash['currency_code'] = 'currency_code'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        maxio_id
        name
        currency_code
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, maxio_id: SKIP, name: SKIP, currency_code: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @maxio_id = maxio_id unless maxio_id == SKIP
      @name = name unless name == SKIP
      @currency_code = currency_code unless currency_code == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      maxio_id = hash.key?('maxio_id') ? hash['maxio_id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      currency_code = hash.key?('currency_code') ? hash['currency_code'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Register.new(id: id,
                   maxio_id: maxio_id,
                   name: name,
                   currency_code: currency_code,
                   additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, maxio_id: #{@maxio_id}, name: #{@name}, currency_code:"\
      " #{@currency_code}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, maxio_id: #{@maxio_id.inspect}, name: #{@name.inspect},"\
      " currency_code: #{@currency_code.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
