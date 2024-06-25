# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # AddCouponsRequest Model.
  class AddCouponsRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :codes

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['codes'] = 'codes'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        codes
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(codes: SKIP, additional_properties: {})
      @codes = codes unless codes == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      codes = hash.key?('codes') ? hash['codes'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      AddCouponsRequest.new(codes: codes,
                            additional_properties: hash)
    end
  end
end
