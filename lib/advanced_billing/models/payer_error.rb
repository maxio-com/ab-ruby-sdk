# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PayerError Model.
  class PayerError < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :last_name

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :first_name

    # TODO: Write general description for this method
    # @return [Array[String]]
    attr_accessor :email

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['last_name'] = 'last_name'
      @_hash['first_name'] = 'first_name'
      @_hash['email'] = 'email'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        last_name
        first_name
        email
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(last_name: SKIP, first_name: SKIP, email: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @last_name = last_name unless last_name == SKIP
      @first_name = first_name unless first_name == SKIP
      @email = email unless email == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      last_name = hash.key?('last_name') ? hash['last_name'] : SKIP
      first_name = hash.key?('first_name') ? hash['first_name'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PayerError.new(last_name: last_name,
                     first_name: first_name,
                     email: email,
                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} last_name: #{@last_name}, first_name: #{@first_name}, email: #{@email},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} last_name: #{@last_name.inspect}, first_name: #{@first_name.inspect},"\
      " email: #{@email.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
