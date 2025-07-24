# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # BulkCreateSegments Model.
  class BulkCreateSegments < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[CreateSegment]]
    attr_accessor :segments

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['segments'] = 'segments'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        segments
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(segments: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @segments = segments unless segments == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      segments = nil
      unless hash['segments'].nil?
        segments = []
        hash['segments'].each do |structure|
          segments << (CreateSegment.from_hash(structure) if structure)
        end
      end

      segments = SKIP unless hash.key?('segments')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      BulkCreateSegments.new(segments: segments,
                             additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} segments: #{@segments}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} segments: #{@segments.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
