# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # WebhookResponse Model.
  class WebhookResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Webhook]
    attr_accessor :webhook

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['webhook'] = 'webhook'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        webhook
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(webhook = SKIP)
      @webhook = webhook unless webhook == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      webhook = Webhook.from_hash(hash['webhook']) if hash['webhook']

      # Create object from extracted values.
      WebhookResponse.new(webhook)
    end
  end
end
