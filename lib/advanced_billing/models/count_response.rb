# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # CountResponse Model.
  class CountResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :count

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['count'] = 'count'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        count
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(count = SKIP,
                   additional_properties = {})
      @count = count unless count == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      count = hash.key?('count') ? hash['count'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      CountResponse.new(count,
                        hash)
    end
  end
end
