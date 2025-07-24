# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Webhook Order.
  class WebhookOrder
    WEBHOOK_ORDER = [
      # TODO: Write general description for NEWEST_FIRST
      NEWEST_FIRST = 'newest_first'.freeze,

      # TODO: Write general description for OLDEST_FIRST
      OLDEST_FIRST = 'oldest_first'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      WEBHOOK_ORDER.include?(value)
    end
  end
end
