# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # OriginInvoice Model.
  class OriginInvoice < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The UID of the invoice serving as an origin invoice.
    # @return [String]
    attr_accessor :uid

    # The number of the invoice serving as an origin invoice.
    # @return [String]
    attr_accessor :number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['uid'] = 'uid'
      @_hash['number'] = 'number'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        uid
        number
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(uid: SKIP, number: SKIP, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @uid = uid unless uid == SKIP
      @number = number unless number == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      uid = hash.key?('uid') ? hash['uid'] : SKIP
      number = hash.key?('number') ? hash['number'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      OriginInvoice.new(uid: uid,
                        number: number,
                        additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [OriginInvoice | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} uid: #{@uid}, number: #{@number}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} uid: #{@uid.inspect}, number: #{@number.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
