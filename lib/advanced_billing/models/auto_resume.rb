# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module AdvancedBilling
  # AutoResume Model.
  class AutoResume < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :automatically_resume_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['automatically_resume_at'] = 'automatically_resume_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        automatically_resume_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        automatically_resume_at
      ]
    end

    def initialize(automatically_resume_at: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @automatically_resume_at = automatically_resume_at unless automatically_resume_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      automatically_resume_at = if hash.key?('automatically_resume_at')
                                  (DateTimeHelper.from_rfc3339(hash['automatically_resume_at']) if hash['automatically_resume_at'])
                                else
                                  SKIP
                                end

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      AutoResume.new(automatically_resume_at: automatically_resume_at,
                     additional_properties: additional_properties)
    end

    def to_custom_automatically_resume_at
      DateTimeHelper.to_rfc3339(automatically_resume_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} automatically_resume_at: #{@automatically_resume_at},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} automatically_resume_at: #{@automatically_resume_at.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
