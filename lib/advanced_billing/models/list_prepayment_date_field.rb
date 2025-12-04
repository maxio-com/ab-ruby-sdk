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

    def self.from_value(value, default_value = CREATED_AT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'created_at' then CREATED_AT
      when 'application_at' then APPLICATION_AT
      else
        default_value
      end
    end
  end
end
