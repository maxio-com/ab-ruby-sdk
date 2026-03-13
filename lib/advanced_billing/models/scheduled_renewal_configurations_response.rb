# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ScheduledRenewalConfigurationsResponse Model.
  class ScheduledRenewalConfigurationsResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[ScheduledRenewalConfiguration]]
    attr_accessor :scheduled_renewal_configurations

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['scheduled_renewal_configurations'] =
        'scheduled_renewal_configurations'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        scheduled_renewal_configurations
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(scheduled_renewal_configurations: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      unless scheduled_renewal_configurations == SKIP
        @scheduled_renewal_configurations =
          scheduled_renewal_configurations
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      scheduled_renewal_configurations = nil
      unless hash['scheduled_renewal_configurations'].nil?
        scheduled_renewal_configurations = []
        hash['scheduled_renewal_configurations'].each do |structure|
          scheduled_renewal_configurations << (ScheduledRenewalConfiguration.from_hash(structure) if structure)
        end
      end

      scheduled_renewal_configurations = SKIP unless hash.key?('scheduled_renewal_configurations')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ScheduledRenewalConfigurationsResponse.new(scheduled_renewal_configurations: scheduled_renewal_configurations,
                                                 additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} scheduled_renewal_configurations: #{@scheduled_renewal_configurations},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} scheduled_renewal_configurations:"\
      " #{@scheduled_renewal_configurations.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
