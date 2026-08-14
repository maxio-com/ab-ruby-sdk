# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # CreateProductFamily Model.
  class CreateProductFamily < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :handle

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # Whether surcharging applies to this product family. Defaults to `true`
    # when omitted. Only applied on sites where surcharging is enabled.
    # @return [TrueClass | FalseClass]
    attr_accessor :surcharging

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['handle'] = 'handle'
      @_hash['description'] = 'description'
      @_hash['surcharging'] = 'surcharging'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        handle
        description
        surcharging
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        handle
        description
      ]
    end

    def initialize(name:, handle: SKIP, description: SKIP, surcharging: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @name = name
      @handle = handle unless handle == SKIP
      @description = description unless description == SKIP
      @surcharging = surcharging unless surcharging == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash.key?('name') ? hash['name'] : nil
      handle = hash.key?('handle') ? hash['handle'] : SKIP
      description = hash.key?('description') ? hash['description'] : SKIP
      surcharging = hash.key?('surcharging') ? hash['surcharging'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateProductFamily.new(name: name,
                              handle: handle,
                              description: description,
                              surcharging: surcharging,
                              additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name}, handle: #{@handle}, description: #{@description},"\
      " surcharging: #{@surcharging}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} name: #{@name.inspect}, handle: #{@handle.inspect}, description:"\
      " #{@description.inspect}, surcharging: #{@surcharging.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
