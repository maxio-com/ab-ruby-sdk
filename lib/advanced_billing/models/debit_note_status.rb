# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Current status of the debit note.
  class DebitNoteStatus
    DEBIT_NOTE_STATUS = [
      # TODO: Write general description for OPEN
      OPEN = 'open'.freeze,

      # TODO: Write general description for APPLIED
      APPLIED = 'applied'.freeze,

      # TODO: Write general description for BANISHED
      BANISHED = 'banished'.freeze,

      # TODO: Write general description for PAID
      PAID = 'paid'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      DEBIT_NOTE_STATUS.include?(value)
    end

    def self.from_value(value, default_value = OPEN)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'open' then OPEN
      when 'applied' then APPLIED
      when 'banished' then BANISHED
      when 'paid' then PAID
      else
        default_value
      end
    end
  end
end
