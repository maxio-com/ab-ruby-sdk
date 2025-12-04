# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # all: Will clear all products, customers, and related subscriptions from the
  # site. customers: Will clear only customers and related subscriptions
  # (leaving the products untouched) for the site. Revenue will also be reset to
  # 0.
  class CleanupScope
    CLEANUP_SCOPE = [
      # TODO: Write general description for ALL
      ALL = 'all'.freeze,

      # TODO: Write general description for CUSTOMERS
      CUSTOMERS = 'customers'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CLEANUP_SCOPE.include?(value)
    end

    def self.from_value(value, default_value = ALL)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'all' then ALL
      when 'customers' then CUSTOMERS
      else
        default_value
      end
    end
  end
end
