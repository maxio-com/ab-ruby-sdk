# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # CouponSubcodesResponse Model.
  class CouponSubcodesResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :created_codes

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :duplicate_codes

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :invalid_codes

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['created_codes'] = 'created_codes'
      @_hash['duplicate_codes'] = 'duplicate_codes'
      @_hash['invalid_codes'] = 'invalid_codes'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        created_codes
        duplicate_codes
        invalid_codes
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(created_codes: SKIP, duplicate_codes: SKIP,
                   invalid_codes: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @created_codes = created_codes unless created_codes == SKIP
      @duplicate_codes = duplicate_codes unless duplicate_codes == SKIP
      @invalid_codes = invalid_codes unless invalid_codes == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      created_codes = hash.key?('created_codes') ? hash['created_codes'] : SKIP
      duplicate_codes =
        hash.key?('duplicate_codes') ? hash['duplicate_codes'] : SKIP
      invalid_codes = hash.key?('invalid_codes') ? hash['invalid_codes'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CouponSubcodesResponse.new(created_codes: created_codes,
                                 duplicate_codes: duplicate_codes,
                                 invalid_codes: invalid_codes,
                                 additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} created_codes: #{@created_codes}, duplicate_codes: #{@duplicate_codes},"\
      " invalid_codes: #{@invalid_codes}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} created_codes: #{@created_codes.inspect}, duplicate_codes:"\
      " #{@duplicate_codes.inspect}, invalid_codes: #{@invalid_codes.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
