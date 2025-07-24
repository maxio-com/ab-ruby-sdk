# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ReactivateSubscriptionGroupRequest Model.
  class ReactivateSubscriptionGroupRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :resume

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :resume_members

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['resume'] = 'resume'
      @_hash['resume_members'] = 'resume_members'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        resume
        resume_members
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(resume: SKIP, resume_members: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @resume = resume unless resume == SKIP
      @resume_members = resume_members unless resume_members == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      resume = hash.key?('resume') ? hash['resume'] : SKIP
      resume_members =
        hash.key?('resume_members') ? hash['resume_members'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ReactivateSubscriptionGroupRequest.new(resume: resume,
                                             resume_members: resume_members,
                                             additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} resume: #{@resume}, resume_members: #{@resume_members},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} resume: #{@resume.inspect}, resume_members: #{@resume_members.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
