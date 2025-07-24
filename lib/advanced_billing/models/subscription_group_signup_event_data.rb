# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # SubscriptionGroupSignupEventData Model.
  class SubscriptionGroupSignupEventData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [SubscriptionGroupSignupFailureData]
    attr_accessor :subscription_group

    # TODO: Write general description for this method
    # @return [Customer]
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
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @subscription_group = subscription_group
      @customer = customer
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      if hash['subscription_group']
        subscription_group = SubscriptionGroupSignupFailureData.from_hash(hash['subscription_group'])
      end
      customer = Customer.from_hash(hash['customer']) if hash['customer']

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionGroupSignupEventData.new(subscription_group: subscription_group,
                                           customer: customer,
                                           additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [SubscriptionGroupSignupEventData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.subscription_group,
                                ->(val) { SubscriptionGroupSignupFailureData.validate(val) },
                                is_model_hash: true) and
            APIHelper.valid_type?(value.customer,
                                  ->(val) { Customer.validate(val) },
                                  is_model_hash: true)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['subscription_group'],
                              ->(val) { SubscriptionGroupSignupFailureData.validate(val) },
                              is_model_hash: true) and
          APIHelper.valid_type?(value['customer'],
                                ->(val) { Customer.validate(val) },
                                is_model_hash: true)
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} subscription_group: #{@subscription_group}, customer: #{@customer},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} subscription_group: #{@subscription_group.inspect}, customer:"\
      " #{@customer.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
