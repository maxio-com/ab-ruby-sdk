# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # PrepaymentsResponse Model.
  class PrepaymentsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[Prepayment]]
    attr_accessor :prepayments

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['prepayments'] = 'prepayments'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        prepayments
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(prepayments: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @prepayments = prepayments unless prepayments == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      prepayments = nil
      unless hash['prepayments'].nil?
        prepayments = []
        hash['prepayments'].each do |structure|
          prepayments << (Prepayment.from_hash(structure) if structure)
        end
      end

      prepayments = SKIP unless hash.key?('prepayments')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PrepaymentsResponse.new(prepayments: prepayments,
                              additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} prepayments: #{@prepayments}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} prepayments: #{@prepayments.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
