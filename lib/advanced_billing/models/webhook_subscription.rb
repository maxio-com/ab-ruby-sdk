# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Webhook Subscription.
  class WebhookSubscription
    WEBHOOK_SUBSCRIPTION = [
      # TODO: Write general description for BILLING_DATE_CHANGE
      BILLING_DATE_CHANGE = 'billing_date_change'.freeze,

      # TODO: Write general description for COMPONENT_ALLOCATION_CHANGE
      COMPONENT_ALLOCATION_CHANGE = 'component_allocation_change'.freeze,

      # TODO: Write general description for CUSTOMER_CREATE
      CUSTOMER_CREATE = 'customer_create'.freeze,

      # TODO: Write general description for CUSTOMER_UPDATE
      CUSTOMER_UPDATE = 'customer_update'.freeze,

      # TODO: Write general description for DUNNING_STEP_REACHED
      DUNNING_STEP_REACHED = 'dunning_step_reached'.freeze,

      # TODO: Write general description for EXPIRING_CARD
      EXPIRING_CARD = 'expiring_card'.freeze,

      # TODO: Write general description for EXPIRATION_DATE_CHANGE
      EXPIRATION_DATE_CHANGE = 'expiration_date_change'.freeze,

      # TODO: Write general description for INVOICE_ISSUED
      INVOICE_ISSUED = 'invoice_issued'.freeze,

      # TODO: Write general description for METERED_USAGE
      METERED_USAGE = 'metered_usage'.freeze,

      # TODO: Write general description for PAYMENT_FAILURE
      PAYMENT_FAILURE = 'payment_failure'.freeze,

      # TODO: Write general description for PAYMENT_SUCCESS
      PAYMENT_SUCCESS = 'payment_success'.freeze,

      # TODO: Write general description for DIRECT_DEBIT_PAYMENT_PENDING
      DIRECT_DEBIT_PAYMENT_PENDING = 'direct_debit_payment_pending'.freeze,

      # TODO: Write general description for DIRECT_DEBIT_PAYMENT_PAID_OUT
      DIRECT_DEBIT_PAYMENT_PAID_OUT = 'direct_debit_payment_paid_out'.freeze,

      # TODO: Write general description for DIRECT_DEBIT_PAYMENT_REJECTED
      DIRECT_DEBIT_PAYMENT_REJECTED = 'direct_debit_payment_rejected'.freeze,

      # TODO: Write general description for PREPAID_SUBSCRIPTION_BALANCE_CHANGED
      PREPAID_SUBSCRIPTION_BALANCE_CHANGED = 'prepaid_subscription_balance_changed'.freeze,

      # TODO: Write general description for PREPAID_USAGE
      PREPAID_USAGE = 'prepaid_usage'.freeze,

      # TODO: Write general description for REFUND_FAILURE
      REFUND_FAILURE = 'refund_failure'.freeze,

      # TODO: Write general description for REFUND_SUCCESS
      REFUND_SUCCESS = 'refund_success'.freeze,

      # TODO: Write general description for RENEWAL_FAILURE
      RENEWAL_FAILURE = 'renewal_failure'.freeze,

      # TODO: Write general description for RENEWAL_SUCCESS
      RENEWAL_SUCCESS = 'renewal_success'.freeze,

      # TODO: Write general description for SIGNUP_FAILURE
      SIGNUP_FAILURE = 'signup_failure'.freeze,

      # TODO: Write general description for SIGNUP_SUCCESS
      SIGNUP_SUCCESS = 'signup_success'.freeze,

      # TODO: Write general description for STATEMENT_CLOSED
      STATEMENT_CLOSED = 'statement_closed'.freeze,

      # TODO: Write general description for STATEMENT_SETTLED
      STATEMENT_SETTLED = 'statement_settled'.freeze,

      # TODO: Write general description for SUBSCRIPTION_CARD_UPDATE
      SUBSCRIPTION_CARD_UPDATE = 'subscription_card_update'.freeze,

      # TODO: Write general description for SUBSCRIPTION_GROUP_CARD_UPDATE
      SUBSCRIPTION_GROUP_CARD_UPDATE = 'subscription_group_card_update'.freeze,

      # TODO: Write general description for SUBSCRIPTION_PRODUCT_CHANGE
      SUBSCRIPTION_PRODUCT_CHANGE = 'subscription_product_change'.freeze,

      # TODO: Write general description for SUBSCRIPTION_STATE_CHANGE
      SUBSCRIPTION_STATE_CHANGE = 'subscription_state_change'.freeze,

      # TODO: Write general description for TRIAL_END_NOTICE
      TRIAL_END_NOTICE = 'trial_end_notice'.freeze,

      # TODO: Write general description for UPCOMING_RENEWAL_NOTICE
      UPCOMING_RENEWAL_NOTICE = 'upcoming_renewal_notice'.freeze,

      # TODO: Write general description for UPGRADE_DOWNGRADE_FAILURE
      UPGRADE_DOWNGRADE_FAILURE = 'upgrade_downgrade_failure'.freeze,

      # TODO: Write general description for UPGRADE_DOWNGRADE_SUCCESS
      UPGRADE_DOWNGRADE_SUCCESS = 'upgrade_downgrade_success'.freeze,

      # TODO: Write general description for PENDING_CANCELLATION_CHANGE
      PENDING_CANCELLATION_CHANGE = 'pending_cancellation_change'.freeze,

      # TODO: Write general description for
      # SUBSCRIPTION_PREPAYMENT_ACCOUNT_BALANCE_CHANGED
      SUBSCRIPTION_PREPAYMENT_ACCOUNT_BALANCE_CHANGED = 'subscription_prepayment_account_balance_changed'.freeze,

      # TODO: Write general description for
      # SUBSCRIPTION_SERVICE_CREDIT_ACCOUNT_BALANCE_CHANGED
      SUBSCRIPTION_SERVICE_CREDIT_ACCOUNT_BALANCE_CHANGED = 'subscription_service_credit_account_balance_changed'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      WEBHOOK_SUBSCRIPTION.include?(value)
    end

    def self.from_value(value, default_value = BILLING_DATE_CHANGE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'billing_date_change' then BILLING_DATE_CHANGE
      when 'component_allocation_change' then COMPONENT_ALLOCATION_CHANGE
      when 'customer_create' then CUSTOMER_CREATE
      when 'customer_update' then CUSTOMER_UPDATE
      when 'dunning_step_reached' then DUNNING_STEP_REACHED
      when 'expiring_card' then EXPIRING_CARD
      when 'expiration_date_change' then EXPIRATION_DATE_CHANGE
      when 'invoice_issued' then INVOICE_ISSUED
      when 'metered_usage' then METERED_USAGE
      when 'payment_failure' then PAYMENT_FAILURE
      when 'payment_success' then PAYMENT_SUCCESS
      when 'direct_debit_payment_pending' then DIRECT_DEBIT_PAYMENT_PENDING
      when 'direct_debit_payment_paid_out' then DIRECT_DEBIT_PAYMENT_PAID_OUT
      when 'direct_debit_payment_rejected' then DIRECT_DEBIT_PAYMENT_REJECTED
      when 'prepaid_subscription_balance_changed' then PREPAID_SUBSCRIPTION_BALANCE_CHANGED
      when 'prepaid_usage' then PREPAID_USAGE
      when 'refund_failure' then REFUND_FAILURE
      when 'refund_success' then REFUND_SUCCESS
      when 'renewal_failure' then RENEWAL_FAILURE
      when 'renewal_success' then RENEWAL_SUCCESS
      when 'signup_failure' then SIGNUP_FAILURE
      when 'signup_success' then SIGNUP_SUCCESS
      when 'statement_closed' then STATEMENT_CLOSED
      when 'statement_settled' then STATEMENT_SETTLED
      when 'subscription_card_update' then SUBSCRIPTION_CARD_UPDATE
      when 'subscription_group_card_update' then SUBSCRIPTION_GROUP_CARD_UPDATE
      when 'subscription_product_change' then SUBSCRIPTION_PRODUCT_CHANGE
      when 'subscription_state_change' then SUBSCRIPTION_STATE_CHANGE
      when 'trial_end_notice' then TRIAL_END_NOTICE
      when 'upcoming_renewal_notice' then UPCOMING_RENEWAL_NOTICE
      when 'upgrade_downgrade_failure' then UPGRADE_DOWNGRADE_FAILURE
      when 'upgrade_downgrade_success' then UPGRADE_DOWNGRADE_SUCCESS
      when 'pending_cancellation_change' then PENDING_CANCELLATION_CHANGE
      when 'subscription_prepayment_account_balance_changed' then SUBSCRIPTION_PREPAYMENT_ACCOUNT_BALANCE_CHANGED
      when 'subscription_service_credit_account_balance_changed' then SUBSCRIPTION_SERVICE_CREDIT_ACCOUNT_BALANCE_CHANGED
      else
        default_value
      end
    end
  end
end
