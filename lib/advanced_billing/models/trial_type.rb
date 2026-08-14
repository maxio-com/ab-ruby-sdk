# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Indicates how a trial is handled when the trial period ends and there is no
  # credit card on file. For `no_obligation`, the subscription transitions to a
  # Trial Ended state. Maxio will not send any emails or statements. For
  # `payment_expected`, the subscription transitions to a Past Due state. Maxio
  # will send normal dunning emails and statements according to your other
  # settings.
  class TrialType
    TRIAL_TYPE = [
      # TODO: Write general description for NO_OBLIGATION
      NO_OBLIGATION = 'no_obligation'.freeze,

      # TODO: Write general description for PAYMENT_EXPECTED
      PAYMENT_EXPECTED = 'payment_expected'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRIAL_TYPE.include?(value)
    end

    def self.from_value(value, default_value = NO_OBLIGATION)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'no_obligation' then NO_OBLIGATION
      when 'payment_expected' then PAYMENT_EXPECTED
      else
        default_value
      end
    end
  end
end
