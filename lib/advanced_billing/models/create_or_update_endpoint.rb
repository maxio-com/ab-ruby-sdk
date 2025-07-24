# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Used to Create or Update Endpoint
  class CreateOrUpdateEndpoint < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :url

    # TODO: Write general description for this method
    # @return [Array[WebhookSubscription]]
    attr_accessor :webhook_subscriptions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['url'] = 'url'
      @_hash['webhook_subscriptions'] = 'webhook_subscriptions'
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

    def initialize(url:, webhook_subscriptions:, additional_properties: {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @url = url
      @webhook_subscriptions = webhook_subscriptions
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      url = hash.key?('url') ? hash['url'] : nil
      webhook_subscriptions =
        hash.key?('webhook_subscriptions') ? hash['webhook_subscriptions'] : nil

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      CreateOrUpdateEndpoint.new(url: url,
                                 webhook_subscriptions: webhook_subscriptions,
                                 additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} url: #{@url}, webhook_subscriptions: #{@webhook_subscriptions},"\
      " additional_properties: #{get_additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} url: #{@url.inspect}, webhook_subscriptions:"\
      " #{@webhook_subscriptions.inspect}, additional_properties: #{get_additional_properties}>"
    end
  end
end
