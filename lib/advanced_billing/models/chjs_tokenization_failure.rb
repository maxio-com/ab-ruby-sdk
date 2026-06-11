# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # ChjsTokenizationFailure Model.
  class ChjsTokenizationFailure < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :errors

    # PCI-safe cardholder fields only. Full card numbers, CVV, and billing
    # address are never included.
    # @return [PaymentProfileParams]
    attr_accessor :payment_profile_params

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['errors'] = 'errors'
      @_hash['payment_profile_params'] = 'payment_profile_params'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        payment_profile_params
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(errors:, payment_profile_params: SKIP,
                   additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @errors = errors
      @payment_profile_params = payment_profile_params unless payment_profile_params == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      errors = hash.key?('errors') ? hash['errors'] : nil
      payment_profile_params = PaymentProfileParams.from_hash(hash['payment_profile_params']) if
        hash['payment_profile_params']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      ChjsTokenizationFailure.new(errors: errors,
                                  payment_profile_params: payment_profile_params,
                                  additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [ChjsTokenizationFailure | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.errors,
                                     ->(val) { val.instance_of? String })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['errors'],
                            ->(val) { val.instance_of? String })
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} errors: #{@errors}, payment_profile_params: #{@payment_profile_params},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} errors: #{@errors.inspect}, payment_profile_params:"\
      " #{@payment_profile_params.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
