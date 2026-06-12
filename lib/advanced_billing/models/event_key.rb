# advanced_billing
#
# This file was automatically generated for Maxio by
# APIMATIC v3.0 ( https://www.apimatic.io ).

module AdvancedBilling
  # Event Key.
  class EventKey
    EVENT_KEY = [
      # TODO: Write general description for PAYMENT_SUCCESS
      PAYMENT_SUCCESS = 'payment_success'.freeze,

      # TODO: Write general description for PAYMENT_FAILURE
      PAYMENT_FAILURE = 'payment_failure'.freeze,

      # TODO: Write general description for SIGNUP_SUCCESS
      SIGNUP_SUCCESS = 'signup_success'.freeze,

      # TODO: Write general description for SIGNUP_FAILURE
      SIGNUP_FAILURE = 'signup_failure'.freeze,

      # TODO: Write general description for DELAYED_SIGNUP_CREATION_SUCCESS
      DELAYED_SIGNUP_CREATION_SUCCESS = 'delayed_signup_creation_success'.freeze,

      # TODO: Write general description for DELAYED_SIGNUP_CREATION_FAILURE
      DELAYED_SIGNUP_CREATION_FAILURE = 'delayed_signup_creation_failure'.freeze,

      # TODO: Write general description for BILLING_DATE_CHANGE
      BILLING_DATE_CHANGE = 'billing_date_change'.freeze,

      # TODO: Write general description for EXPIRATION_DATE_CHANGE
      EXPIRATION_DATE_CHANGE = 'expiration_date_change'.freeze,

      # TODO: Write general description for RENEWAL_SUCCESS
      RENEWAL_SUCCESS = 'renewal_success'.freeze,

      # TODO: Write general description for RENEWAL_FAILURE
      RENEWAL_FAILURE = 'renewal_failure'.freeze,

      # TODO: Write general description for SUBSCRIPTION_STATE_CHANGE
      SUBSCRIPTION_STATE_CHANGE = 'subscription_state_change'.freeze,

      # TODO: Write general description for SUBSCRIPTION_PRODUCT_CHANGE
      SUBSCRIPTION_PRODUCT_CHANGE = 'subscription_product_change'.freeze,

      # TODO: Write general description for PENDING_CANCELLATION_CHANGE
      PENDING_CANCELLATION_CHANGE = 'pending_cancellation_change'.freeze,

      # TODO: Write general description for EXPIRING_CARD
      EXPIRING_CARD = 'expiring_card'.freeze,

      # TODO: Write general description for CUSTOMER_UPDATE
      CUSTOMER_UPDATE = 'customer_update'.freeze,

      # TODO: Write general description for CUSTOMER_CREATE
      CUSTOMER_CREATE = 'customer_create'.freeze,

      # TODO: Write general description for CUSTOMER_DELETE
      CUSTOMER_DELETE = 'customer_delete'.freeze,

      # TODO: Write general description for COMPONENT_ALLOCATION_CHANGE
      COMPONENT_ALLOCATION_CHANGE = 'component_allocation_change'.freeze,

      # TODO: Write general description for METERED_USAGE
      METERED_USAGE = 'metered_usage'.freeze,

      # TODO: Write general description for PREPAID_USAGE
      PREPAID_USAGE = 'prepaid_usage'.freeze,

      # TODO: Write general description for UPGRADE_DOWNGRADE_SUCCESS
      UPGRADE_DOWNGRADE_SUCCESS = 'upgrade_downgrade_success'.freeze,

      # TODO: Write general description for UPGRADE_DOWNGRADE_FAILURE
      UPGRADE_DOWNGRADE_FAILURE = 'upgrade_downgrade_failure'.freeze,

      # TODO: Write general description for STATEMENT_CLOSED
      STATEMENT_CLOSED = 'statement_closed'.freeze,

      # TODO: Write general description for STATEMENT_SETTLED
      STATEMENT_SETTLED = 'statement_settled'.freeze,

      # TODO: Write general description for SUBSCRIPTION_CARD_UPDATE
      SUBSCRIPTION_CARD_UPDATE = 'subscription_card_update'.freeze,

      # TODO: Write general description for SUBSCRIPTION_GROUP_CARD_UPDATE
      SUBSCRIPTION_GROUP_CARD_UPDATE = 'subscription_group_card_update'.freeze,

      # TODO: Write general description for SUBSCRIPTION_BANK_ACCOUNT_UPDATE
      SUBSCRIPTION_BANK_ACCOUNT_UPDATE = 'subscription_bank_account_update'.freeze,

      # TODO: Write general description for REFUND_SUCCESS
      REFUND_SUCCESS = 'refund_success'.freeze,

      # TODO: Write general description for REFUND_FAILURE
      REFUND_FAILURE = 'refund_failure'.freeze,

      # TODO: Write general description for UPCOMING_RENEWAL_NOTICE
      UPCOMING_RENEWAL_NOTICE = 'upcoming_renewal_notice'.freeze,

      # TODO: Write general description for TRIAL_END_NOTICE
      TRIAL_END_NOTICE = 'trial_end_notice'.freeze,

      # TODO: Write general description for DUNNING_STEP_REACHED
      DUNNING_STEP_REACHED = 'dunning_step_reached'.freeze,

      # TODO: Write general description for INVOICE_ISSUED
      INVOICE_ISSUED = 'invoice_issued'.freeze,

      # TODO: Write general description for INVOICE_PENDING
      INVOICE_PENDING = 'invoice_pending'.freeze,

      # TODO: Write general description for PREPAID_SUBSCRIPTION_BALANCE_CHANGED
      PREPAID_SUBSCRIPTION_BALANCE_CHANGED = 'prepaid_subscription_balance_changed'.freeze,

      # TODO: Write general description for SUBSCRIPTION_GROUP_SIGNUP_SUCCESS
      SUBSCRIPTION_GROUP_SIGNUP_SUCCESS = 'subscription_group_signup_success'.freeze,

      # TODO: Write general description for SUBSCRIPTION_GROUP_SIGNUP_FAILURE
      SUBSCRIPTION_GROUP_SIGNUP_FAILURE = 'subscription_group_signup_failure'.freeze,

      # TODO: Write general description for DIRECT_DEBIT_PAYMENT_PAID_OUT
      DIRECT_DEBIT_PAYMENT_PAID_OUT = 'direct_debit_payment_paid_out'.freeze,

      # TODO: Write general description for DIRECT_DEBIT_PAYMENT_REJECTED
      DIRECT_DEBIT_PAYMENT_REJECTED = 'direct_debit_payment_rejected'.freeze,

      # TODO: Write general description for DIRECT_DEBIT_PAYMENT_PENDING
      DIRECT_DEBIT_PAYMENT_PENDING = 'direct_debit_payment_pending'.freeze,

      # TODO: Write general description for PENDING_PAYMENT_CREATED
      PENDING_PAYMENT_CREATED = 'pending_payment_created'.freeze,

      # TODO: Write general description for PENDING_PAYMENT_FAILED
      PENDING_PAYMENT_FAILED = 'pending_payment_failed'.freeze,

      # TODO: Write general description for PENDING_PAYMENT_COMPLETED
      PENDING_PAYMENT_COMPLETED = 'pending_payment_completed'.freeze,

      # TODO: Write general description for PROFORMA_INVOICE_ISSUED
      PROFORMA_INVOICE_ISSUED = 'proforma_invoice_issued'.freeze,

      # TODO: Write general description for
      # SUBSCRIPTION_PREPAYMENT_ACCOUNT_BALANCE_CHANGED
      SUBSCRIPTION_PREPAYMENT_ACCOUNT_BALANCE_CHANGED = 'subscription_prepayment_account_balance_changed'.freeze,

      # TODO: Write general description for
      # SUBSCRIPTION_SERVICE_CREDIT_ACCOUNT_BALANCE_CHANGED
      SUBSCRIPTION_SERVICE_CREDIT_ACCOUNT_BALANCE_CHANGED = 'subscription_service_credit_account_balance_changed'.freeze,

      # TODO: Write general description for CUSTOM_FIELD_VALUE_CHANGE
      CUSTOM_FIELD_VALUE_CHANGE = 'custom_field_value_change'.freeze,

      # TODO: Write general description for ITEM_PRICE_POINT_CHANGED
      ITEM_PRICE_POINT_CHANGED = 'item_price_point_changed'.freeze,

      # TODO: Write general description for RENEWAL_SUCCESS_RECREATED
      RENEWAL_SUCCESS_RECREATED = 'renewal_success_recreated'.freeze,

      # TODO: Write general description for RENEWAL_FAILURE_RECREATED
      RENEWAL_FAILURE_RECREATED = 'renewal_failure_recreated'.freeze,

      # TODO: Write general description for PAYMENT_SUCCESS_RECREATED
      PAYMENT_SUCCESS_RECREATED = 'payment_success_recreated'.freeze,

      # TODO: Write general description for PAYMENT_FAILURE_RECREATED
      PAYMENT_FAILURE_RECREATED = 'payment_failure_recreated'.freeze,

      # TODO: Write general description for SUBSCRIPTION_DELETION
      SUBSCRIPTION_DELETION = 'subscription_deletion'.freeze,

      # TODO: Write general description for
      # SUBSCRIPTION_GROUP_BANK_ACCOUNT_UPDATE
      SUBSCRIPTION_GROUP_BANK_ACCOUNT_UPDATE = 'subscription_group_bank_account_update'.freeze,

      # TODO: Write general description for SUBSCRIPTION_PAYPAL_ACCOUNT_UPDATE
      SUBSCRIPTION_PAYPAL_ACCOUNT_UPDATE = 'subscription_paypal_account_update'.freeze,

      # TODO: Write general description for
      # SUBSCRIPTION_GROUP_PAYPAL_ACCOUNT_UPDATE
      SUBSCRIPTION_GROUP_PAYPAL_ACCOUNT_UPDATE = 'subscription_group_paypal_account_update'.freeze,

      # TODO: Write general description for SUBSCRIPTION_CUSTOMER_CHANGE
      SUBSCRIPTION_CUSTOMER_CHANGE = 'subscription_customer_change'.freeze,

      # TODO: Write general description for ACCOUNT_TRANSACTION_CHANGED
      ACCOUNT_TRANSACTION_CHANGED = 'account_transaction_changed'.freeze,

      # TODO: Write general description for GO_CARDLESS_PAYMENT_PAID_OUT
      GO_CARDLESS_PAYMENT_PAID_OUT = 'go_cardless_payment_paid_out'.freeze,

      # TODO: Write general description for GO_CARDLESS_PAYMENT_REJECTED
      GO_CARDLESS_PAYMENT_REJECTED = 'go_cardless_payment_rejected'.freeze,

      # TODO: Write general description for GO_CARDLESS_PAYMENT_PENDING
      GO_CARDLESS_PAYMENT_PENDING = 'go_cardless_payment_pending'.freeze,

      # TODO: Write general description for STRIPE_DIRECT_DEBIT_PAYMENT_PAID_OUT
      STRIPE_DIRECT_DEBIT_PAYMENT_PAID_OUT = 'stripe_direct_debit_payment_paid_out'.freeze,

      # TODO: Write general description for STRIPE_DIRECT_DEBIT_PAYMENT_REJECTED
      STRIPE_DIRECT_DEBIT_PAYMENT_REJECTED = 'stripe_direct_debit_payment_rejected'.freeze,

      # TODO: Write general description for STRIPE_DIRECT_DEBIT_PAYMENT_PENDING
      STRIPE_DIRECT_DEBIT_PAYMENT_PENDING = 'stripe_direct_debit_payment_pending'.freeze,

      # TODO: Write general description for
      # MAXIO_PAYMENTS_DIRECT_DEBIT_PAYMENT_PAID_OUT
      MAXIO_PAYMENTS_DIRECT_DEBIT_PAYMENT_PAID_OUT = 'maxio_payments_direct_debit_payment_paid_out'.freeze,

      # TODO: Write general description for
      # MAXIO_PAYMENTS_DIRECT_DEBIT_PAYMENT_REJECTED
      MAXIO_PAYMENTS_DIRECT_DEBIT_PAYMENT_REJECTED = 'maxio_payments_direct_debit_payment_rejected'.freeze,

      # TODO: Write general description for
      # MAXIO_PAYMENTS_DIRECT_DEBIT_PAYMENT_PENDING
      MAXIO_PAYMENTS_DIRECT_DEBIT_PAYMENT_PENDING = 'maxio_payments_direct_debit_payment_pending'.freeze,

      # TODO: Write general description for INVOICE_IN_COLLECTIONS_CANCELED
      INVOICE_IN_COLLECTIONS_CANCELED = 'invoice_in_collections_canceled'.freeze,

      # TODO: Write general description for SUBSCRIPTION_ADDED_TO_GROUP
      SUBSCRIPTION_ADDED_TO_GROUP = 'subscription_added_to_group'.freeze,

      # TODO: Write general description for SUBSCRIPTION_REMOVED_FROM_GROUP
      SUBSCRIPTION_REMOVED_FROM_GROUP = 'subscription_removed_from_group'.freeze,

      # TODO: Write general description for CHARGEBACK_OPENED
      CHARGEBACK_OPENED = 'chargeback_opened'.freeze,

      # TODO: Write general description for CHARGEBACK_LOST
      CHARGEBACK_LOST = 'chargeback_lost'.freeze,

      # TODO: Write general description for CHARGEBACK_ACCEPTED
      CHARGEBACK_ACCEPTED = 'chargeback_accepted'.freeze,

      # TODO: Write general description for CHARGEBACK_CLOSED
      CHARGEBACK_CLOSED = 'chargeback_closed'.freeze,

      # TODO: Write general description for CHARGEBACK_WON
      CHARGEBACK_WON = 'chargeback_won'.freeze,

      # TODO: Write general description for PAYMENT_COLLECTION_METHOD_CHANGED
      PAYMENT_COLLECTION_METHOD_CHANGED = 'payment_collection_method_changed'.freeze,

      # TODO: Write general description for COMPONENT_BILLING_DATE_CHANGED
      COMPONENT_BILLING_DATE_CHANGED = 'component_billing_date_changed'.freeze,

      # TODO: Write general description for CHJS_TOKENIZATION_FAILURE
      CHJS_TOKENIZATION_FAILURE = 'chjs_tokenization_failure'.freeze,

      # TODO: Write general description for CHJS_TOKENIZATION_SUCCESS
      CHJS_TOKENIZATION_SUCCESS = 'chjs_tokenization_success'.freeze,

      # TODO: Write general description for SUBSCRIPTION_TERM_RENEWAL_SCHEDULED
      SUBSCRIPTION_TERM_RENEWAL_SCHEDULED = 'subscription_term_renewal_scheduled'.freeze,

      # TODO: Write general description for SUBSCRIPTION_TERM_RENEWAL_PENDING
      SUBSCRIPTION_TERM_RENEWAL_PENDING = 'subscription_term_renewal_pending'.freeze,

      # TODO: Write general description for SUBSCRIPTION_TERM_RENEWAL_ACTIVATED
      SUBSCRIPTION_TERM_RENEWAL_ACTIVATED = 'subscription_term_renewal_activated'.freeze,

      # TODO: Write general description for SUBSCRIPTION_TERM_RENEWAL_REMOVED
      SUBSCRIPTION_TERM_RENEWAL_REMOVED = 'subscription_term_renewal_removed'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      EVENT_KEY.include?(value)
    end

    def self.from_value(value, default_value = PAYMENT_SUCCESS)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'payment_success' then PAYMENT_SUCCESS
      when 'payment_failure' then PAYMENT_FAILURE
      when 'signup_success' then SIGNUP_SUCCESS
      when 'signup_failure' then SIGNUP_FAILURE
      when 'delayed_signup_creation_success' then DELAYED_SIGNUP_CREATION_SUCCESS
      when 'delayed_signup_creation_failure' then DELAYED_SIGNUP_CREATION_FAILURE
      when 'billing_date_change' then BILLING_DATE_CHANGE
      when 'expiration_date_change' then EXPIRATION_DATE_CHANGE
      when 'renewal_success' then RENEWAL_SUCCESS
      when 'renewal_failure' then RENEWAL_FAILURE
      when 'subscription_state_change' then SUBSCRIPTION_STATE_CHANGE
      when 'subscription_product_change' then SUBSCRIPTION_PRODUCT_CHANGE
      when 'pending_cancellation_change' then PENDING_CANCELLATION_CHANGE
      when 'expiring_card' then EXPIRING_CARD
      when 'customer_update' then CUSTOMER_UPDATE
      when 'customer_create' then CUSTOMER_CREATE
      when 'customer_delete' then CUSTOMER_DELETE
      when 'component_allocation_change' then COMPONENT_ALLOCATION_CHANGE
      when 'metered_usage' then METERED_USAGE
      when 'prepaid_usage' then PREPAID_USAGE
      when 'upgrade_downgrade_success' then UPGRADE_DOWNGRADE_SUCCESS
      when 'upgrade_downgrade_failure' then UPGRADE_DOWNGRADE_FAILURE
      when 'statement_closed' then STATEMENT_CLOSED
      when 'statement_settled' then STATEMENT_SETTLED
      when 'subscription_card_update' then SUBSCRIPTION_CARD_UPDATE
      when 'subscription_group_card_update' then SUBSCRIPTION_GROUP_CARD_UPDATE
      when 'subscription_bank_account_update' then SUBSCRIPTION_BANK_ACCOUNT_UPDATE
      when 'refund_success' then REFUND_SUCCESS
      when 'refund_failure' then REFUND_FAILURE
      when 'upcoming_renewal_notice' then UPCOMING_RENEWAL_NOTICE
      when 'trial_end_notice' then TRIAL_END_NOTICE
      when 'dunning_step_reached' then DUNNING_STEP_REACHED
      when 'invoice_issued' then INVOICE_ISSUED
      when 'invoice_pending' then INVOICE_PENDING
      when 'prepaid_subscription_balance_changed' then PREPAID_SUBSCRIPTION_BALANCE_CHANGED
      when 'subscription_group_signup_success' then SUBSCRIPTION_GROUP_SIGNUP_SUCCESS
      when 'subscription_group_signup_failure' then SUBSCRIPTION_GROUP_SIGNUP_FAILURE
      when 'direct_debit_payment_paid_out' then DIRECT_DEBIT_PAYMENT_PAID_OUT
      when 'direct_debit_payment_rejected' then DIRECT_DEBIT_PAYMENT_REJECTED
      when 'direct_debit_payment_pending' then DIRECT_DEBIT_PAYMENT_PENDING
      when 'pending_payment_created' then PENDING_PAYMENT_CREATED
      when 'pending_payment_failed' then PENDING_PAYMENT_FAILED
      when 'pending_payment_completed' then PENDING_PAYMENT_COMPLETED
      when 'proforma_invoice_issued' then PROFORMA_INVOICE_ISSUED
      when 'subscription_prepayment_account_balance_changed' then SUBSCRIPTION_PREPAYMENT_ACCOUNT_BALANCE_CHANGED
      when 'subscription_service_credit_account_balance_changed' then SUBSCRIPTION_SERVICE_CREDIT_ACCOUNT_BALANCE_CHANGED
      when 'custom_field_value_change' then CUSTOM_FIELD_VALUE_CHANGE
      when 'item_price_point_changed' then ITEM_PRICE_POINT_CHANGED
      when 'renewal_success_recreated' then RENEWAL_SUCCESS_RECREATED
      when 'renewal_failure_recreated' then RENEWAL_FAILURE_RECREATED
      when 'payment_success_recreated' then PAYMENT_SUCCESS_RECREATED
      when 'payment_failure_recreated' then PAYMENT_FAILURE_RECREATED
      when 'subscription_deletion' then SUBSCRIPTION_DELETION
      when 'subscription_group_bank_account_update' then SUBSCRIPTION_GROUP_BANK_ACCOUNT_UPDATE
      when 'subscription_paypal_account_update' then SUBSCRIPTION_PAYPAL_ACCOUNT_UPDATE
      when 'subscription_group_paypal_account_update' then SUBSCRIPTION_GROUP_PAYPAL_ACCOUNT_UPDATE
      when 'subscription_customer_change' then SUBSCRIPTION_CUSTOMER_CHANGE
      when 'account_transaction_changed' then ACCOUNT_TRANSACTION_CHANGED
      when 'go_cardless_payment_paid_out' then GO_CARDLESS_PAYMENT_PAID_OUT
      when 'go_cardless_payment_rejected' then GO_CARDLESS_PAYMENT_REJECTED
      when 'go_cardless_payment_pending' then GO_CARDLESS_PAYMENT_PENDING
      when 'stripe_direct_debit_payment_paid_out' then STRIPE_DIRECT_DEBIT_PAYMENT_PAID_OUT
      when 'stripe_direct_debit_payment_rejected' then STRIPE_DIRECT_DEBIT_PAYMENT_REJECTED
      when 'stripe_direct_debit_payment_pending' then STRIPE_DIRECT_DEBIT_PAYMENT_PENDING
      when 'maxio_payments_direct_debit_payment_paid_out' then MAXIO_PAYMENTS_DIRECT_DEBIT_PAYMENT_PAID_OUT
      when 'maxio_payments_direct_debit_payment_rejected' then MAXIO_PAYMENTS_DIRECT_DEBIT_PAYMENT_REJECTED
      when 'maxio_payments_direct_debit_payment_pending' then MAXIO_PAYMENTS_DIRECT_DEBIT_PAYMENT_PENDING
      when 'invoice_in_collections_canceled' then INVOICE_IN_COLLECTIONS_CANCELED
      when 'subscription_added_to_group' then SUBSCRIPTION_ADDED_TO_GROUP
      when 'subscription_removed_from_group' then SUBSCRIPTION_REMOVED_FROM_GROUP
      when 'chargeback_opened' then CHARGEBACK_OPENED
      when 'chargeback_lost' then CHARGEBACK_LOST
      when 'chargeback_accepted' then CHARGEBACK_ACCEPTED
      when 'chargeback_closed' then CHARGEBACK_CLOSED
      when 'chargeback_won' then CHARGEBACK_WON
      when 'payment_collection_method_changed' then PAYMENT_COLLECTION_METHOD_CHANGED
      when 'component_billing_date_changed' then COMPONENT_BILLING_DATE_CHANGED
      when 'chjs_tokenization_failure' then CHJS_TOKENIZATION_FAILURE
      when 'chjs_tokenization_success' then CHJS_TOKENIZATION_SUCCESS
      when 'subscription_term_renewal_scheduled' then SUBSCRIPTION_TERM_RENEWAL_SCHEDULED
      when 'subscription_term_renewal_pending' then SUBSCRIPTION_TERM_RENEWAL_PENDING
      when 'subscription_term_renewal_activated' then SUBSCRIPTION_TERM_RENEWAL_ACTIVATED
      when 'subscription_term_renewal_removed' then SUBSCRIPTION_TERM_RENEWAL_REMOVED
      else
        default_value
      end
    end
  end
end
