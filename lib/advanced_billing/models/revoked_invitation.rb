# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # RevokedInvitation Model.
  class RevokedInvitation < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_sent_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_accepted_at

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :uninvited_count

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['last_sent_at'] = 'last_sent_at'
      @_hash['last_accepted_at'] = 'last_accepted_at'
      @_hash['uninvited_count'] = 'uninvited_count'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        last_sent_at
        last_accepted_at
        uninvited_count
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(last_sent_at: SKIP, last_accepted_at: SKIP,
                   uninvited_count: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @last_sent_at = last_sent_at unless last_sent_at == SKIP
      @last_accepted_at = last_accepted_at unless last_accepted_at == SKIP
      @uninvited_count = uninvited_count unless uninvited_count == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      last_sent_at = hash.key?('last_sent_at') ? hash['last_sent_at'] : SKIP
      last_accepted_at =
        hash.key?('last_accepted_at') ? hash['last_accepted_at'] : SKIP
      uninvited_count =
        hash.key?('uninvited_count') ? hash['uninvited_count'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      RevokedInvitation.new(last_sent_at: last_sent_at,
                            last_accepted_at: last_accepted_at,
                            uninvited_count: uninvited_count,
                            additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} last_sent_at: #{@last_sent_at}, last_accepted_at: #{@last_accepted_at},"\
      " uninvited_count: #{@uninvited_count}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} last_sent_at: #{@last_sent_at.inspect}, last_accepted_at:"\
      " #{@last_accepted_at.inspect}, uninvited_count: #{@uninvited_count.inspect},"\
      " additional_properties: #{get_additional_properties}>"
    end
  end
end
