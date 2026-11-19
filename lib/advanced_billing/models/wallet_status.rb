# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Wallet Status.
  class WalletStatus
    WALLET_STATUS = [
      # TODO: Write general description for ACTIVE
      ACTIVE = 'active'.freeze,

      # TODO: Write general description for ARCHIVED
      ARCHIVED = 'archived'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      WALLET_STATUS.include?(value)
    end

    def self.from_value(value, default_value = ACTIVE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'active' then ACTIVE
      when 'archived' then ARCHIVED
      else
        default_value
      end
    end
  end
end
