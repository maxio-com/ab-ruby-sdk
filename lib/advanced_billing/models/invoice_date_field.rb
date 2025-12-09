# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Invoice Date Field.
  class InvoiceDateField
    INVOICE_DATE_FIELD = [
      # TODO: Write general description for CREATED_AT
      CREATED_AT = 'created_at'.freeze,

      # TODO: Write general description for DUE_DATE
      DUE_DATE = 'due_date'.freeze,

      # TODO: Write general description for ISSUE_DATE
      ISSUE_DATE = 'issue_date'.freeze,

      # TODO: Write general description for UPDATED_AT
      UPDATED_AT = 'updated_at'.freeze,

      # TODO: Write general description for PAID_DATE
      PAID_DATE = 'paid_date'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INVOICE_DATE_FIELD.include?(value)
    end

    def self.from_value(value, default_value = CREATED_AT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'created_at' then CREATED_AT
      when 'due_date' then DUE_DATE
      when 'issue_date' then ISSUE_DATE
      when 'updated_at' then UPDATED_AT
      when 'paid_date' then PAID_DATE
      else
        default_value
      end
    end
  end
end
