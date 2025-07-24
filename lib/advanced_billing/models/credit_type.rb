# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The type of credit to be created when upgrading/downgrading. Defaults to the
  # component and then site setting if one is not provided. Available values:
  # `full`, `prorated`, `none`.
  class CreditType
    CREDIT_TYPE = [
      # TODO: Write general description for FULL
      FULL = 'full'.freeze,

      # TODO: Write general description for PRORATED
      PRORATED = 'prorated'.freeze,

      # TODO: Write general description for NONE
      NONE = 'none'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CREDIT_TYPE.include?(value)
    end
  end
end
