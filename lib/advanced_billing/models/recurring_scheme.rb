# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Recurring Scheme.
  class RecurringScheme
    RECURRING_SCHEME = [
      # TODO: Write general description for DO_NOT_RECUR
      DO_NOT_RECUR = 'do_not_recur'.freeze,

      # TODO: Write general description for RECUR_INDEFINITELY
      RECUR_INDEFINITELY = 'recur_indefinitely'.freeze,

      # TODO: Write general description for RECUR_WITH_DURATION
      RECUR_WITH_DURATION = 'recur_with_duration'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      RECURRING_SCHEME.include?(value)
    end

    def self.from_value(value, default_value = DO_NOT_RECUR)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'do_not_recur' then DO_NOT_RECUR
      when 'recur_indefinitely' then RECUR_INDEFINITELY
      when 'recur_with_duration' then RECUR_WITH_DURATION
      else
        default_value
      end
    end
  end
end
