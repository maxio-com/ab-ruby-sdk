# advanced_billing
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

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
