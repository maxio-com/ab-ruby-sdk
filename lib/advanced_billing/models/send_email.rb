# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # SendEmail Model.
  class SendEmail < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [TrueClass | FalseClass]
    attr_accessor :can_execute

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['can_execute'] = 'can_execute'
      @_hash['url'] = 'url'
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

    def initialize(can_execute:, url:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @can_execute = can_execute
      @url = url
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      can_execute = hash.key?('can_execute') ? hash['can_execute'] : nil
      url = hash.key?('url') ? hash['url'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SendEmail.new(can_execute: can_execute,
                    url: url,
                    additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} can_execute: #{@can_execute}, url: #{@url}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} can_execute: #{@can_execute.inspect}, url: #{@url.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
