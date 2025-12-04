# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

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

    def self.from_value(value, default_value = CHARGEBACK)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'chargeback' then CHARGEBACK
      when 'refund' then REFUND
      else
        default_value
      end
    end
  end
end
