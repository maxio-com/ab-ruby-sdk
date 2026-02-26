# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ScheduledRenewalConfigurationRequest Model.
  class ScheduledRenewalConfigurationRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [ScheduledRenewalConfigurationRequestBody]
    attr_accessor :renewal_configuration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['renewal_configuration'] = 'renewal_configuration'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(renewal_configuration:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @renewal_configuration = renewal_configuration
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      if hash['renewal_configuration']
        renewal_configuration = ScheduledRenewalConfigurationRequestBody.from_hash(hash['renewal_configuration'])
      end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ScheduledRenewalConfigurationRequest.new(renewal_configuration: renewal_configuration,
                                               additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} renewal_configuration: #{@renewal_configuration}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} renewal_configuration: #{@renewal_configuration.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
