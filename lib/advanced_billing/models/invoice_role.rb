# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Invoice Role.
  class InvoiceRole
    INVOICE_ROLE = [
      # TODO: Write general description for UNSET
      UNSET = 'unset'.freeze,

      # TODO: Write general description for SIGNUP
      SIGNUP = 'signup'.freeze,

      # TODO: Write general description for RENEWAL
      RENEWAL = 'renewal'.freeze,

      # TODO: Write general description for USAGE
      USAGE = 'usage'.freeze,

      # TODO: Write general description for REACTIVATION
      REACTIVATION = 'reactivation'.freeze,

      # TODO: Write general description for PRORATION
      PRORATION = 'proration'.freeze,

      # TODO: Write general description for MIGRATION
      MIGRATION = 'migration'.freeze,

      # TODO: Write general description for ADHOC
      ADHOC = 'adhoc'.freeze,

      # TODO: Write general description for BACKPORT
      BACKPORT = 'backport'.freeze,

      # TODO: Write general description for BACKPORTBALANCERECONCILIATION
      BACKPORTBALANCERECONCILIATION = 'backport-balance-reconciliation'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INVOICE_ROLE.include?(value)
    end

    def self.from_value(value, default_value = UNSET)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'unset' then UNSET
      when 'signup' then SIGNUP
      when 'renewal' then RENEWAL
      when 'usage' then USAGE
      when 'reactivation' then REACTIVATION
      when 'proration' then PRORATION
      when 'migration' then MIGRATION
      when 'adhoc' then ADHOC
      when 'backport' then BACKPORT
      when 'backportbalancereconciliation' then BACKPORTBALANCERECONCILIATION
      else
        default_value
      end
    end
  end
end
