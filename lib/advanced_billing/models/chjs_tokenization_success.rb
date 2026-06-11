# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ChjsTokenizationSuccess Model.
  class ChjsTokenizationSuccess < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [PaymentProfile]
    attr_accessor :payment_profile

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :gateway_customer_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_profile'] = 'payment_profile'
      @_hash['gateway_customer_id'] = 'gateway_customer_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        gateway_customer_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        gateway_customer_id
      ]
    end

    def initialize(payment_profile:, gateway_customer_id: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @payment_profile = payment_profile
      @gateway_customer_id = gateway_customer_id unless gateway_customer_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_profile = PaymentProfile.from_hash(hash['payment_profile']) if
        hash['payment_profile']
      gateway_customer_id =
        hash.key?('gateway_customer_id') ? hash['gateway_customer_id'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ChjsTokenizationSuccess.new(payment_profile: payment_profile,
                                  gateway_customer_id: gateway_customer_id,
                                  additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [ChjsTokenizationSuccess | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.payment_profile,
                                     ->(val) { PaymentProfile.validate(val) },
                                     is_model_hash: true)
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['payment_profile'],
                            ->(val) { PaymentProfile.validate(val) },
                            is_model_hash: true)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_profile: #{@payment_profile}, gateway_customer_id:"\
      " #{@gateway_customer_id}, additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_profile: #{@payment_profile.inspect}, gateway_customer_id:"\
      " #{@gateway_customer_id.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
