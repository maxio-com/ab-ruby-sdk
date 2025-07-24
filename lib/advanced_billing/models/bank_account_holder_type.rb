# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Defaults to personal
  class BankAccountHolderType
    BANK_ACCOUNT_HOLDER_TYPE = [
      # TODO: Write general description for PERSONAL
      PERSONAL = 'personal'.freeze,

      # TODO: Write general description for BUSINESS
      BUSINESS = 'business'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BANK_ACCOUNT_HOLDER_TYPE.include?(value)
    end
  end
end
