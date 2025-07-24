# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Create Signup Proforma Preview Include.
  class CreateSignupProformaPreviewInclude
    CREATE_SIGNUP_PROFORMA_PREVIEW_INCLUDE = [
      # TODO: Write general description for NEXT_PROFORMA_INVOICE
      NEXT_PROFORMA_INVOICE = 'next_proforma_invoice'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CREATE_SIGNUP_PROFORMA_PREVIEW_INCLUDE.include?(value)
    end
  end
end
