# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # collection_method1.
  class CollectionMethod1
    COLLECTION_METHOD1 = [
      # TODO: Write general description for AUTOMATIC
      AUTOMATIC = 'automatic'.freeze,

      # TODO: Write general description for REMITTANCE
      REMITTANCE = 'remittance'.freeze,

      # TODO: Write general description for PREPAID
      PREPAID = 'prepaid'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      COLLECTION_METHOD1.include?(value)
    end

    def self.from_value(value, default_value = AUTOMATIC)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'automatic' then AUTOMATIC
      when 'remittance' then REMITTANCE
      when 'prepaid' then PREPAID
      else
        default_value
      end
    end
  end
end
