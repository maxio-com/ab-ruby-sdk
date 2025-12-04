# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Invoice Sort Field.
  class InvoiceSortField
    INVOICE_SORT_FIELD = [
      # TODO: Write general description for STATUS
      STATUS = 'status'.freeze,

      # TODO: Write general description for TOTAL_AMOUNT
      TOTAL_AMOUNT = 'total_amount'.freeze,

      # TODO: Write general description for DUE_AMOUNT
      DUE_AMOUNT = 'due_amount'.freeze,

      # TODO: Write general description for CREATED_AT
      CREATED_AT = 'created_at'.freeze,

      # TODO: Write general description for UPDATED_AT
      UPDATED_AT = 'updated_at'.freeze,

      # TODO: Write general description for ISSUE_DATE
      ISSUE_DATE = 'issue_date'.freeze,

      # TODO: Write general description for DUE_DATE
      DUE_DATE = 'due_date'.freeze,

      # TODO: Write general description for NUMBER
      NUMBER = 'number'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INVOICE_SORT_FIELD.include?(value)
    end

    def self.from_value(value, default_value = STATUS)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'status' then STATUS
      when 'total_amount' then TOTAL_AMOUNT
      when 'due_amount' then DUE_AMOUNT
      when 'created_at' then CREATED_AT
      when 'updated_at' then UPDATED_AT
      when 'issue_date' then ISSUE_DATE
      when 'due_date' then DUE_DATE
      when 'number' then NUMBER
      else
        default_value
      end
    end
  end
end
