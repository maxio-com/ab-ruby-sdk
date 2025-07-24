# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ListServiceCreditsResponse Model.
  class ListServiceCreditsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[ServiceCredit1]]
    attr_accessor :service_credits

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['service_credits'] = 'service_credits'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        service_credits
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(service_credits: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @service_credits = service_credits unless service_credits == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      service_credits = nil
      unless hash['service_credits'].nil?
        service_credits = []
        hash['service_credits'].each do |structure|
          service_credits << (ServiceCredit1.from_hash(structure) if structure)
        end
      end

      service_credits = SKIP unless hash.key?('service_credits')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ListServiceCreditsResponse.new(service_credits: service_credits,
                                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} service_credits: #{@service_credits}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} service_credits: #{@service_credits.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
