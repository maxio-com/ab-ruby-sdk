# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Allows to filter by `not_null` or `null`.
  class IncludeNullOrNotNull
    INCLUDE_NULL_OR_NOT_NULL = [
      # TODO: Write general description for NOT_NULL
      NOT_NULL = 'not_null'.freeze,

      # TODO: Write general description for NULL
      NULL = 'null'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INCLUDE_NULL_OR_NOT_NULL.include?(value)
    end
  end
end
