# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # PCI-safe cardholder fields only. Full card numbers, CVV, and billing address
  # are never included.
  class PaymentProfileParams < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :first_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :card_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['card_type'] = 'card_type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        first_name
        last_name
        card_type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(first_name: SKIP, last_name: SKIP, card_type: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @card_type = card_type unless card_type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      first_name = hash.key?('first_name') ? hash['first_name'] : SKIP
      last_name = hash.key?('last_name') ? hash['last_name'] : SKIP
      card_type = hash.key?('card_type') ? hash['card_type'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      PaymentProfileParams.new(first_name: first_name,
                               last_name: last_name,
                               card_type: card_type,
                               additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [PaymentProfileParams | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} first_name: #{@first_name}, last_name: #{@last_name}, card_type:"\
      " #{@card_type}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} first_name: #{@first_name.inspect}, last_name: #{@last_name.inspect},"\
      " card_type: #{@card_type.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
