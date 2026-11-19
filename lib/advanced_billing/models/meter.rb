# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The metering meter this wallet is paired with, or `null` for a wallet with
  # no meter. Set on create and immutable afterward.
  class Meter < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :handle

    # How many wallet units one meter unit is worth, as a decimal string.
    # Defaults to `"1.0"`.
    # @return [String]
    attr_accessor :conversion_rate

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['conversion_rate'] = 'conversion_rate'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        handle
        conversion_rate
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, name: SKIP, handle: SKIP, conversion_rate: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @handle = handle unless handle == SKIP
      @conversion_rate = conversion_rate unless conversion_rate == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      conversion_rate =
        hash.key?('conversion_rate') ? hash['conversion_rate'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Meter.new(id: id,
                name: name,
                handle: handle,
                conversion_rate: conversion_rate,
                additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, name: #{@name}, handle: #{@handle}, conversion_rate:"\
      " #{@conversion_rate}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, name: #{@name.inspect}, handle: #{@handle.inspect},"\
      " conversion_rate: #{@conversion_rate.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
