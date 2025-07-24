# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Webhook Status.
  class WebhookStatus
    WEBHOOK_STATUS = [
      # TODO: Write general description for SUCCESSFUL
      SUCCESSFUL = 'successful'.freeze,

      # TODO: Write general description for FAILED
      FAILED = 'failed'.freeze,

      # TODO: Write general description for PENDING
      PENDING = 'pending'.freeze,

      # TODO: Write general description for PAUSED
      PAUSED = 'paused'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      WEBHOOK_STATUS.include?(value)
    end
  end
end
