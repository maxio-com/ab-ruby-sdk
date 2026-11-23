# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Credit Note Date Field.
  class CreditNoteDateField
    CREDIT_NOTE_DATE_FIELD = [
      # TODO: Write general description for ISSUE_DATE
      ISSUE_DATE = 'issue_date'.freeze,

      # TODO: Write general description for APPLIED_DATE
      APPLIED_DATE = 'applied_date'.freeze,

      # TODO: Write general description for CREATED_AT
      CREATED_AT = 'created_at'.freeze,

      # TODO: Write general description for UPDATED_AT
      UPDATED_AT = 'updated_at'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CREDIT_NOTE_DATE_FIELD.include?(value)
    end

    def self.from_value(value, default_value = ISSUE_DATE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'issue_date' then ISSUE_DATE
      when 'applied_date' then APPLIED_DATE
      when 'created_at' then CREATED_AT
      when 'updated_at' then UPDATED_AT
      else
        default_value
      end
    end
  end
end
