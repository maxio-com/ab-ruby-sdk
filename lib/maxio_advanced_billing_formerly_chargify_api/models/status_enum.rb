# maxio_advanced_billing_formerly_chargify_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MaxioAdvancedBillingFormerlyChargifyApi
  # The current status of the invoice. See [Invoice
  # Statuses](https://chargify.zendesk.com/hc/en-us/articles/4407737494171#line-
  # item-breakdowns) for more.
  class StatusEnum
    STATUS_ENUM = [
      # TODO: Write general description for DRAFT
      DRAFT = 'draft'.freeze,

      # TODO: Write general description for OPEN
      OPEN = 'open'.freeze,

      # TODO: Write general description for PAID
      PAID = 'paid'.freeze,

      # TODO: Write general description for PENDING
      PENDING = 'pending'.freeze,

      # TODO: Write general description for VOIDED
      VOIDED = 'voided'.freeze,

      # TODO: Write general description for CANCELED
      CANCELED = 'canceled'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      STATUS_ENUM.include?(value)
    end
  end
end
