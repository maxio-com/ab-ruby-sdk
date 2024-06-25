# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # PaymentProfileResponse Model.
  class PaymentProfileResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :payment_profile

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_profile'] = 'payment_profile'
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

    def initialize(payment_profile:, additional_properties: {})
      @payment_profile = payment_profile

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_profile = hash.key?('payment_profile') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:PaymentProfileResponsePaymentProfile), hash['payment_profile']
      ) : nil

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      PaymentProfileResponse.new(payment_profile: payment_profile,
                                 additional_properties: hash)
    end

    # Validates an instance of the object from a given value.
    # @param [PaymentProfileResponse | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return UnionTypeLookUp.get(:PaymentProfileResponsePaymentProfile)
                              .validate(value.payment_profile)
      end

      return false unless value.instance_of? Hash

      UnionTypeLookUp.get(:PaymentProfileResponsePaymentProfile)
                     .validate(value['payment_profile'])
    end
  end
end
