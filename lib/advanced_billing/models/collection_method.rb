# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # The type of payment collection to be used in the subscription. For legacy
  # Statements Architecture valid options are - `invoice`, `automatic`. For
  # current Relationship Invoicing Architecture valid options are -
  # `remittance`, `automatic`, `prepaid`.
  class CollectionMethod
    COLLECTION_METHOD = [
      # TODO: Write general description for AUTOMATIC
      AUTOMATIC = 'automatic'.freeze,

      # TODO: Write general description for REMITTANCE
      REMITTANCE = 'remittance'.freeze,

      # TODO: Write general description for PREPAID
      PREPAID = 'prepaid'.freeze,

      # TODO: Write general description for INVOICE
      INVOICE = 'invoice'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      COLLECTION_METHOD.include?(value)
    end
  end
end
