# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The current chargeback status.
  class ChargebackStatus
    CHARGEBACK_STATUS = [
      # TODO: Write general description for OPEN
      OPEN = 'open'.freeze,

      # TODO: Write general description for LOST
      LOST = 'lost'.freeze,

      # TODO: Write general description for WON
      WON = 'won'.freeze,

      # TODO: Write general description for CLOSED
      CLOSED = 'closed'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CHARGEBACK_STATUS.include?(value)
    end
  end
end
