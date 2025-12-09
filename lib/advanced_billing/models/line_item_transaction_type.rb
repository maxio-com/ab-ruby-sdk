# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # A handle for the line item transaction type
  class LineItemTransactionType
    LINE_ITEM_TRANSACTION_TYPE = [
      # TODO: Write general description for CHARGE
      CHARGE = 'charge'.freeze,

      # TODO: Write general description for CREDIT
      CREDIT = 'credit'.freeze,

      # TODO: Write general description for ADJUSTMENT
      ADJUSTMENT = 'adjustment'.freeze,

      # TODO: Write general description for PAYMENT
      PAYMENT = 'payment'.freeze,

      # TODO: Write general description for REFUND
      REFUND = 'refund'.freeze,

      # TODO: Write general description for INFO_TRANSACTION
      INFO_TRANSACTION = 'info_transaction'.freeze,

      # TODO: Write general description for PAYMENT_AUTHORIZATION
      PAYMENT_AUTHORIZATION = 'payment_authorization'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      LINE_ITEM_TRANSACTION_TYPE.include?(value)
    end

    def self.from_value(value, default_value = CHARGE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'charge' then CHARGE
      when 'credit' then CREDIT
      when 'adjustment' then ADJUSTMENT
      when 'payment' then PAYMENT
      when 'refund' then REFUND
      when 'info_transaction' then INFO_TRANSACTION
      when 'payment_authorization' then PAYMENT_AUTHORIZATION
      else
        default_value
      end
    end
  end
end
