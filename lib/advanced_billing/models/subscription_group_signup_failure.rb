# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # SubscriptionGroupSignupFailure Model.
  class SubscriptionGroupSignupFailure < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [SubscriptionGroupSignupFailureData]
    attr_accessor :subscription_group

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :customer

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscription_group'] = 'subscription_group'
      @_hash['customer'] = 'customer'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      %w[
        customer
      ]
    end

    def initialize(subscription_group:, customer:, additional_properties: {})
      @subscription_group = subscription_group
      @customer = customer

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      if hash['subscription_group']
        subscription_group = SubscriptionGroupSignupFailureData.from_hash(hash['subscription_group'])
      end
      customer = hash.key?('customer') ? hash['customer'] : nil

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      SubscriptionGroupSignupFailure.new(subscription_group: subscription_group,
                                         customer: customer,
                                         additional_properties: hash)
    end

    # Validates an instance of the object from a given value.
    # @param [SubscriptionGroupSignupFailure | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.subscription_group,
                                ->(val) { SubscriptionGroupSignupFailureData.validate(val) },
                                is_model_hash: true) and
            APIHelper.valid_type?(value.customer,
                                  ->(val) { val.instance_of? String })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['subscription_group'],
                              ->(val) { SubscriptionGroupSignupFailureData.validate(val) },
                              is_model_hash: true) and
          APIHelper.valid_type?(value['customer'],
                                ->(val) { val.instance_of? String })
      )
    end
  end
end
