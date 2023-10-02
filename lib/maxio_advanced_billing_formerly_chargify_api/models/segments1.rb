# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # Segments1 Model.
  class Segments1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # An attribute 'x' would be changed for a number (an index in request array)
    # where the error occured.
    # In this object, the key represents the field and the value is an array
    # with error messages. In most cases this object would contain just one key.
    # @return [X1]
    attr_accessor :x

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['x'] = ''x''
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        x
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(x = SKIP)
      @x = x unless x == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      x = X1.from_hash(hash['\'x\'']) if hash['\'x\'']

      # Create object from extracted values.
      Segments1.new(x)
    end
  end
end
