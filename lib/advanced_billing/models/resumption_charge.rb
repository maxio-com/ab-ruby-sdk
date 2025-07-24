# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # (For calendar billing subscriptions only) The way that the resumed
  # subscription's charge should be handled
  class ResumptionCharge
    RESUMPTION_CHARGE = [
      # TODO: Write general description for PRORATED
      PRORATED = 'prorated'.freeze,

      # TODO: Write general description for IMMEDIATE
      IMMEDIATE = 'immediate'.freeze,

      # TODO: Write general description for DELAYED
      DELAYED = 'delayed'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      RESUMPTION_CHARGE.include?(value)
    end
  end
end
