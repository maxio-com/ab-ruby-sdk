# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # SubscriptionMRRResponse Model.
  class SubscriptionMRRResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[SubscriptionMRR]]
    attr_accessor :subscriptions_mrr

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['subscriptions_mrr'] = 'subscriptions_mrr'
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

    def initialize(subscriptions_mrr:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @subscriptions_mrr = subscriptions_mrr
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      subscriptions_mrr = nil
      unless hash['subscriptions_mrr'].nil?
        subscriptions_mrr = []
        hash['subscriptions_mrr'].each do |structure|
          subscriptions_mrr << (SubscriptionMRR.from_hash(structure) if structure)
        end
      end

      subscriptions_mrr = nil unless hash.key?('subscriptions_mrr')

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      SubscriptionMRRResponse.new(subscriptions_mrr: subscriptions_mrr,
                                  additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} subscriptions_mrr: #{@subscriptions_mrr}, additional_properties:"\
      " #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} subscriptions_mrr: #{@subscriptions_mrr.inspect}, additional_properties:"\
      " #{get_additional_properties}>"
    end
  end
end
