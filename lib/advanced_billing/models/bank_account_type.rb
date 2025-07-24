# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Defaults to checking
  class BankAccountType
    BANK_ACCOUNT_TYPE = [
      # TODO: Write general description for CHECKING
      CHECKING = 'checking'.freeze,

      # TODO: Write general description for SAVINGS
      SAVINGS = 'savings'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BANK_ACCOUNT_TYPE.include?(value)
    end
  end
end
