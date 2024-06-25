# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Allows to pause a Subscription
  class PauseRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [AutoResume]
    attr_accessor :hold

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['hold'] = 'hold'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        hold
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(hold: SKIP, additional_properties: {})
      @hold = hold unless hold == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      hold = AutoResume.from_hash(hash['hold']) if hash['hold']

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      PauseRequest.new(hold: hold,
                       additional_properties: hash)
    end
  end
end
