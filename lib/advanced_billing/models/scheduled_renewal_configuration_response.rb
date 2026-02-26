# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ScheduledRenewalConfigurationResponse Model.
  class ScheduledRenewalConfigurationResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [ScheduledRenewalConfiguration]
    attr_accessor :scheduled_renewal_configuration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['scheduled_renewal_configuration'] =
        'scheduled_renewal_configuration'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        scheduled_renewal_configuration
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(scheduled_renewal_configuration: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      unless scheduled_renewal_configuration == SKIP
        @scheduled_renewal_configuration =
          scheduled_renewal_configuration
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      if hash['scheduled_renewal_configuration']
        scheduled_renewal_configuration = ScheduledRenewalConfiguration.from_hash(hash['scheduled_renewal_configuration'])
      end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ScheduledRenewalConfigurationResponse.new(scheduled_renewal_configuration: scheduled_renewal_configuration,
                                                additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} scheduled_renewal_configuration: #{@scheduled_renewal_configuration},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} scheduled_renewal_configuration:"\
      " #{@scheduled_renewal_configuration.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
