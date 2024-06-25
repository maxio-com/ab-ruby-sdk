# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # Required when creating a subscription with Maxio Payments.
  class AgreementAcceptance < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Required when providing agreement acceptance params.
    # @return [String]
    attr_accessor :ip_address

    # Required when creating a subscription with Maxio Payments. Either
    # terms_url or provacy_policy_url required when providing
    # agreement_acceptance params.
    # @return [String]
    attr_accessor :terms_url

    # Required when creating a subscription with Maxio Payments. Either
    # terms_url or provacy_policy_url required when providing
    # agreement_acceptance params.
    # @return [String]
    attr_accessor :privacy_policy_url

    # Required when creating a subscription with Maxio Payments. Either
    # terms_url or provacy_policy_url required when providing
    # agreement_acceptance params.
    # @return [String]
    attr_accessor :return_refund_policy_url

    # Required when creating a subscription with Maxio Payments. Either
    # terms_url or provacy_policy_url required when providing
    # agreement_acceptance params.
    # @return [String]
    attr_accessor :delivery_policy_url

    # Required when creating a subscription with Maxio Payments. Either
    # terms_url or provacy_policy_url required when providing
    # agreement_acceptance params.
    # @return [String]
    attr_accessor :secure_checkout_policy_url

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ip_address'] = 'ip_address'
      @_hash['terms_url'] = 'terms_url'
      @_hash['privacy_policy_url'] = 'privacy_policy_url'
      @_hash['return_refund_policy_url'] = 'return_refund_policy_url'
      @_hash['delivery_policy_url'] = 'delivery_policy_url'
      @_hash['secure_checkout_policy_url'] = 'secure_checkout_policy_url'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        ip_address
        terms_url
        privacy_policy_url
        return_refund_policy_url
        delivery_policy_url
        secure_checkout_policy_url
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(ip_address: SKIP, terms_url: SKIP, privacy_policy_url: SKIP,
                   return_refund_policy_url: SKIP, delivery_policy_url: SKIP,
                   secure_checkout_policy_url: SKIP, additional_properties: {})
      @ip_address = ip_address unless ip_address == SKIP
      @terms_url = terms_url unless terms_url == SKIP
      @privacy_policy_url = privacy_policy_url unless privacy_policy_url == SKIP
      @return_refund_policy_url = return_refund_policy_url unless return_refund_policy_url == SKIP
      @delivery_policy_url = delivery_policy_url unless delivery_policy_url == SKIP
      unless secure_checkout_policy_url == SKIP
        @secure_checkout_policy_url =
          secure_checkout_policy_url
      end

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ip_address = hash.key?('ip_address') ? hash['ip_address'] : SKIP
      terms_url = hash.key?('terms_url') ? hash['terms_url'] : SKIP
      privacy_policy_url =
        hash.key?('privacy_policy_url') ? hash['privacy_policy_url'] : SKIP
      return_refund_policy_url =
        hash.key?('return_refund_policy_url') ? hash['return_refund_policy_url'] : SKIP
      delivery_policy_url =
        hash.key?('delivery_policy_url') ? hash['delivery_policy_url'] : SKIP
      secure_checkout_policy_url =
        hash.key?('secure_checkout_policy_url') ? hash['secure_checkout_policy_url'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      AgreementAcceptance.new(ip_address: ip_address,
                              terms_url: terms_url,
                              privacy_policy_url: privacy_policy_url,
                              return_refund_policy_url: return_refund_policy_url,
                              delivery_policy_url: delivery_policy_url,
                              secure_checkout_policy_url: secure_checkout_policy_url,
                              additional_properties: hash)
    end

    # Validates an instance of the object from a given value.
    # @param [AgreementAcceptance | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end
  end
end
