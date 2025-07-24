# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Current status of the credit note.
  class CreditNoteStatus
    CREDIT_NOTE_STATUS = [
      # TODO: Write general description for OPEN
      OPEN = 'open'.freeze,

      # TODO: Write general description for APPLIED
      APPLIED = 'applied'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CREDIT_NOTE_STATUS.include?(value)
    end
  end
end
