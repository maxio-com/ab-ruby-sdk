# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # List Prepayment Date Field.
  class ListPrepaymentDateField
    LIST_PREPAYMENT_DATE_FIELD = [
      # TODO: Write general description for CREATED_AT
      CREATED_AT = 'created_at'.freeze,

      # TODO: Write general description for APPLICATION_AT
      APPLICATION_AT = 'application_at'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      LIST_PREPAYMENT_DATE_FIELD.include?(value)
    end
  end
end
