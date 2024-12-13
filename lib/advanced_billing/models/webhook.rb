# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # Webhook Model.
  class Webhook < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A string describing which event type produced the given webhook
    # @return [String]
    attr_accessor :event

    # The unique identifier for the webhooks (unique across all of Chargify).
    # This is not changed on a retry/replay of the same webhook, so it may be
    # used to avoid duplicate action for the same event.
    # @return [Integer]
    attr_accessor :id

    # Timestamp indicating when the webhook was created
    # @return [DateTime]
    attr_accessor :created_at

    # Text describing the status code and/or error from the last failed attempt
    # to send the Webhook. When a webhook is retried and accepted, this field
    # will be cleared.
    # @return [String]
    attr_accessor :last_error

    # Timestamp indicating when the last non-acceptance occurred. If a webhook
    # is later resent and accepted, this field will be cleared.
    # @return [DateTime]
    attr_accessor :last_error_at

    # Timestamp indicating when the webhook was accepted by the merchant
    # endpoint. When a webhook is explicitly replayed by the merchant, this
    # value will be cleared until it is accepted again.
    # @return [DateTime]
    attr_accessor :accepted_at

    # Timestamp indicating when the most recent attempt was made to send the
    # webhook
    # @return [DateTime]
    attr_accessor :last_sent_at

    # The url that the endpoint was last sent to.
    # @return [String]
    attr_accessor :last_sent_url

    # A boolean flag describing whether the webhook was accepted by the webhook
    # endpoint for the most recent attempt. (Acceptance is defined by receiving
    # a “200 OK” HTTP response within a reasonable timeframe, i.e. 15 seconds)
    # @return [TrueClass | FalseClass]
    attr_accessor :successful

    # The data sent within the webhook post
    # @return [String]
    attr_accessor :body

    # The calculated webhook signature
    # @return [String]
    attr_accessor :signature

    # The calculated HMAC-SHA-256 webhook signature
    # @return [String]
    attr_accessor :signature_hmac_sha_256

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['event'] = 'event'
      @_hash['id'] = 'id'
      @_hash['created_at'] = 'created_at'
      @_hash['last_error'] = 'last_error'
      @_hash['last_error_at'] = 'last_error_at'
      @_hash['accepted_at'] = 'accepted_at'
      @_hash['last_sent_at'] = 'last_sent_at'
      @_hash['last_sent_url'] = 'last_sent_url'
      @_hash['successful'] = 'successful'
      @_hash['body'] = 'body'
      @_hash['signature'] = 'signature'
      @_hash['signature_hmac_sha_256'] = 'signature_hmac_sha_256'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        event
        id
        created_at
        last_error
        last_error_at
        accepted_at
        last_sent_at
        last_sent_url
        successful
        body
        signature
        signature_hmac_sha_256
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        accepted_at
      ]
    end

    def initialize(event: SKIP, id: SKIP, created_at: SKIP, last_error: SKIP,
                   last_error_at: SKIP, accepted_at: SKIP, last_sent_at: SKIP,
                   last_sent_url: SKIP, successful: SKIP, body: SKIP,
                   signature: SKIP, signature_hmac_sha_256: SKIP,
                   additional_properties : {})
      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end

      @event = event unless event == SKIP
      @id = id unless id == SKIP
      @created_at = created_at unless created_at == SKIP
      @last_error = last_error unless last_error == SKIP
      @last_error_at = last_error_at unless last_error_at == SKIP
      @accepted_at = accepted_at unless accepted_at == SKIP
      @last_sent_at = last_sent_at unless last_sent_at == SKIP
      @last_sent_url = last_sent_url unless last_sent_url == SKIP
      @successful = successful unless successful == SKIP
      @body = body unless body == SKIP
      @signature = signature unless signature == SKIP
      @signature_hmac_sha_256 = signature_hmac_sha_256 unless signature_hmac_sha_256 == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      event = hash.key?('event') ? hash['event'] : SKIP
      id = hash.key?('id') ? hash['id'] : SKIP
      created_at = if hash.key?('created_at')
                     (DateTimeHelper.from_rfc3339(hash['created_at']) if hash['created_at'])
                   else
                     SKIP
                   end
      last_error = hash.key?('last_error') ? hash['last_error'] : SKIP
      last_error_at = if hash.key?('last_error_at')
                        (DateTimeHelper.from_rfc3339(hash['last_error_at']) if hash['last_error_at'])
                      else
                        SKIP
                      end
      accepted_at = if hash.key?('accepted_at')
                      (DateTimeHelper.from_rfc3339(hash['accepted_at']) if hash['accepted_at'])
                    else
                      SKIP
                    end
      last_sent_at = if hash.key?('last_sent_at')
                       (DateTimeHelper.from_rfc3339(hash['last_sent_at']) if hash['last_sent_at'])
                     else
                       SKIP
                     end
      last_sent_url = hash.key?('last_sent_url') ? hash['last_sent_url'] : SKIP
      successful = hash.key?('successful') ? hash['successful'] : SKIP
      body = hash.key?('body') ? hash['body'] : SKIP
      signature = hash.key?('signature') ? hash['signature'] : SKIP
      signature_hmac_sha_256 =
        hash.key?('signature_hmac_sha_256') ? hash['signature_hmac_sha_256'] : SKIP

      # Clean out expected properties from Hash.
      additional_properties = hash.reject { |k, _| names.value?(k) }

      # Create object from extracted values.
      Webhook.new(event: event,
                  id: id,
                  created_at: created_at,
                  last_error: last_error,
                  last_error_at: last_error_at,
                  accepted_at: accepted_at,
                  last_sent_at: last_sent_at,
                  last_sent_url: last_sent_url,
                  successful: successful,
                  body: body,
                  signature: signature,
                  signature_hmac_sha_256: signature_hmac_sha_256,
                  additional_properties: additional_properties)
    end

    def to_custom_created_at
      DateTimeHelper.to_rfc3339(created_at)
    end

    def to_custom_last_error_at
      DateTimeHelper.to_rfc3339(last_error_at)
    end

    def to_custom_accepted_at
      DateTimeHelper.to_rfc3339(accepted_at)
    end

    def to_custom_last_sent_at
      DateTimeHelper.to_rfc3339(last_sent_at)
    end
  end
end
