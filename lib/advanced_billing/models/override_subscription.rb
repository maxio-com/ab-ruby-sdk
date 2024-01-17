# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module AdvancedBilling
  # OverrideSubscription Model.
  class OverrideSubscription < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Can be used to record an external signup date. Chargify uses this field to
    # record when a subscription first goes active (either at signup or at trial
    # end). Only ISO8601 format is supported.
    # @return [DateTime]
    attr_accessor :activated_at

    # Can be used to record an external cancellation date. Chargify sets this
    # field automatically when a subscription is canceled, whether by request or
    # via dunning. Only ISO8601 format is supported.
    # @return [DateTime]
    attr_accessor :canceled_at

    # Can be used to record a reason for the original cancellation.
    # @return [String]
    attr_accessor :cancellation_message

    # Can be used to record an external expiration date. Chargify sets this
    # field automatically when a subscription expires (ceases billing) after a
    # prescribed amount of time. Only ISO8601 format is supported.
    # @return [DateTime]
    attr_accessor :expires_at

    # Can only be used when a subscription is unbilled, which happens when a
    # future initial billing date is passed at subscription creation. The value
    # passed must be before the current date and time. Allows you to set when
    # the period started so mid period component allocations have the correct
    # proration. Only ISO8601 format is supported.
    # @return [DateTime]
    attr_accessor :current_period_starts_at

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['activated_at'] = 'activated_at'
      @_hash['canceled_at'] = 'canceled_at'
      @_hash['cancellation_message'] = 'cancellation_message'
      @_hash['expires_at'] = 'expires_at'
      @_hash['current_period_starts_at'] = 'current_period_starts_at'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        activated_at
        canceled_at
        cancellation_message
        expires_at
        current_period_starts_at
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(activated_at = SKIP,
                   canceled_at = SKIP,
                   cancellation_message = SKIP,
                   expires_at = SKIP,
                   current_period_starts_at = SKIP)
      @activated_at = activated_at unless activated_at == SKIP
      @canceled_at = canceled_at unless canceled_at == SKIP
      @cancellation_message = cancellation_message unless cancellation_message == SKIP
      @expires_at = expires_at unless expires_at == SKIP
      @current_period_starts_at = current_period_starts_at unless current_period_starts_at == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      activated_at = if hash.key?('activated_at')
                       (DateTimeHelper.from_rfc3339(hash['activated_at']) if hash['activated_at'])
                     else
                       SKIP
                     end
      canceled_at = if hash.key?('canceled_at')
                      (DateTimeHelper.from_rfc3339(hash['canceled_at']) if hash['canceled_at'])
                    else
                      SKIP
                    end
      cancellation_message =
        hash.key?('cancellation_message') ? hash['cancellation_message'] : SKIP
      expires_at = if hash.key?('expires_at')
                     (DateTimeHelper.from_rfc3339(hash['expires_at']) if hash['expires_at'])
                   else
                     SKIP
                   end
      current_period_starts_at = if hash.key?('current_period_starts_at')
                                   (DateTimeHelper.from_rfc3339(hash['current_period_starts_at']) if hash['current_period_starts_at'])
                                 else
                                   SKIP
                                 end

      # Create object from extracted values.
      OverrideSubscription.new(activated_at,
                               canceled_at,
                               cancellation_message,
                               expires_at,
                               current_period_starts_at)
    end

    def to_custom_activated_at
      DateTimeHelper.to_rfc3339(activated_at)
    end

    def to_custom_canceled_at
      DateTimeHelper.to_rfc3339(canceled_at)
    end

    def to_custom_expires_at
      DateTimeHelper.to_rfc3339(expires_at)
    end

    def to_custom_current_period_starts_at
      DateTimeHelper.to_rfc3339(current_period_starts_at)
    end
  end
end
