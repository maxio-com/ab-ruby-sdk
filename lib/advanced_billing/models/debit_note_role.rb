# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module AdvancedBilling
  # The role of the debit note.
  class DebitNoteRole
    DEBIT_NOTE_ROLE = [
      # TODO: Write general description for CHARGEBACK
      CHARGEBACK = 'chargeback'.freeze,

      # TODO: Write general description for REFUND
      REFUND = 'refund'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DEBIT_NOTE_ROLE.include?(value)
    end
  end
end
