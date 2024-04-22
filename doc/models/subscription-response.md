
# Subscription Response

## Structure

`SubscriptionResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription` | [`Subscription`](../../doc/models/subscription.md) | Optional | - |

## Example (as JSON)

```json
{
  "subscription": {
    "id": 8,
    "state": "paused",
    "balance_in_cents": 124,
    "total_revenue_in_cents": 48,
    "product_price_in_cents": 238,
    "product_version_number": 162,
    "current_period_ends_at": "2016-03-13T12:52:32.123Z",
    "next_assessment_at": "2016-03-13T12:52:32.123Z",
    "trial_started_at": "2016-03-13T12:52:32.123Z",
    "trial_ended_at": "2016-03-13T12:52:32.123Z",
    "activated_at": "2016-03-13T12:52:32.123Z",
    "expires_at": "2016-03-13T12:52:32.123Z",
    "created_at": "2016-03-13T12:52:32.123Z",
    "updated_at": "2016-03-13T12:52:32.123Z",
    "cancellation_message": "cancellation_message2",
    "cancellation_method": "dunning",
    "cancel_at_end_of_period": false,
    "canceled_at": "2016-03-13T12:52:32.123Z",
    "current_period_started_at": "2016-03-13T12:52:32.123Z",
    "previous_state": "trial_ended",
    "signup_payment_id": 114,
    "signup_revenue": "signup_revenue6",
    "delayed_cancel_at": "2016-03-13T12:52:32.123Z",
    "coupon_code": "coupon_code0",
    "snap_day": "snap_day0",
    "payment_collection_method": "automatic",
    "customer": {
      "first_name": "first_name0",
      "last_name": "last_name8",
      "email": "email6",
      "cc_emails": "cc_emails0",
      "organization": "organization6",
      "reference": "reference4",
      "id": 78,
      "created_at": "2016-03-13T12:52:32.123Z",
      "updated_at": "2016-03-13T12:52:32.123Z",
      "address": "address6",
      "address_2": "address_24",
      "city": "city0",
      "state": "state4",
      "state_name": "state_name0",
      "zip": "zip6",
      "country": "country4",
      "country_name": "country_name8",
      "phone": "phone0",
      "verified": false,
      "portal_customer_created_at": "2016-03-13T12:52:32.123Z",
      "portal_invite_last_sent_at": "2016-03-13T12:52:32.123Z",
      "portal_invite_last_accepted_at": "2016-03-13T12:52:32.123Z",
      "tax_exempt": false,
      "vat_number": "vat_number2",
      "parent_id": 76,
      "locale": "locale8",
      "default_subscription_group_uid": "default_subscription_group_uid6"
    },
    "product": {
      "id": 134,
      "name": "name0",
      "handle": "handle6",
      "description": "description0",
      "accounting_code": "accounting_code6",
      "request_credit_card": false,
      "expiration_interval": 172,
      "expiration_interval_unit": "month",
      "created_at": "2016-03-13T12:52:32.123Z",
      "updated_at": "2016-03-13T12:52:32.123Z",
      "price_in_cents": 54,
      "interval": 186,
      "interval_unit": "day",
      "initial_charge_in_cents": 150,
      "trial_price_in_cents": 34,
      "trial_interval": 88,
      "trial_interval_unit": "day",
      "archived_at": "2016-03-13T12:52:32.123Z",
      "require_credit_card": false,
      "return_params": "return_params8",
      "taxable": false,
      "update_return_url": "update_return_url4",
      "initial_charge_after_trial": false,
      "version_number": 148,
      "update_return_params": "update_return_params4",
      "product_family": {
        "id": 14,
        "name": "name0",
        "handle": "handle6",
        "accounting_code": "accounting_code6",
        "description": "description0",
        "created_at": "2016-03-13T12:52:32.123Z",
        "updated_at": "2016-03-13T12:52:32.123Z"
      },
      "public_signup_pages": [
        {
          "id": 238,
          "return_url": "return_url2",
          "return_params": "return_params4",
          "url": "url0"
        },
        {
          "id": 238,
          "return_url": "return_url2",
          "return_params": "return_params4",
          "url": "url0"
        },
        {
          "id": 238,
          "return_url": "return_url2",
          "return_params": "return_params4",
          "url": "url0"
        }
      ],
      "product_price_point_name": "product_price_point_name6",
      "request_billing_address": false,
      "require_billing_address": false,
      "require_shipping_address": false,
      "tax_code": "tax_code8",
      "default_product_price_point_id": 150,
      "use_site_exchange_rate": false,
      "item_category": "item_category6",
      "product_price_point_id": 0,
      "product_price_point_handle": "product_price_point_handle8"
    },
    "credit_card": {
      "id": 170,
      "first_name": "first_name8",
      "last_name": "last_name6",
      "masked_card_number": "masked_card_number6",
      "card_type": "dankort",
      "expiration_month": 168,
      "expiration_year": 198,
      "customer_id": 208,
      "current_vault": "square",
      "vault_token": "vault_token0",
      "billing_address": "billing_address0",
      "billing_city": "billing_city6",
      "billing_state": "billing_state8",
      "billing_zip": "billing_zip6",
      "billing_country": "billing_country2",
      "customer_vault_token": "customer_vault_token6",
      "billing_address_2": "billing_address_20",
      "payment_type": "credit_card",
      "disabled": false,
      "chargify_token": "chargify_token6",
      "site_gateway_setting_id": 230,
      "gateway_handle": "gateway_handle0"
    },
    "group": {
      "uid": "uid8",
      "scheme": 56,
      "primary_subscription_id": 4,
      "primary": false
    },
    "bank_account": {
      "id": 232,
      "first_name": "first_name4",
      "last_name": "last_name2",
      "customer_id": 14,
      "current_vault": "gocardless",
      "vault_token": "vault_token6",
      "billing_address": "billing_address6",
      "billing_city": "billing_city2",
      "billing_state": "billing_state2",
      "billing_zip": "billing_zip2",
      "billing_country": "billing_country8",
      "customer_vault_token": "customer_vault_token2",
      "billing_address_2": "billing_address_26",
      "bank_name": "bank_name0",
      "masked_bank_routing_number": "masked_bank_routing_number0",
      "masked_bank_account_number": "masked_bank_account_number6",
      "bank_account_type": "checking",
      "bank_account_holder_type": "personal",
      "payment_type": "credit_card",
      "verified": false,
      "site_gateway_setting_id": 36,
      "gateway_handle": "gateway_handle4"
    },
    "payment_type": "payment_type4",
    "referral_code": "referral_code6",
    "next_product_id": 10,
    "next_product_handle": "next_product_handle6",
    "coupon_use_count": 36,
    "coupon_uses_allowed": 198,
    "reason_code": "reason_code8",
    "automatically_resume_at": "2016-03-13T12:52:32.123Z",
    "coupon_codes": [
      "coupon_codes8"
    ],
    "offer_id": 22,
    "payer_id": 232,
    "current_billing_amount_in_cents": 74,
    "product_price_point_id": 130,
    "product_price_point_type": "default",
    "next_product_price_point_id": 44,
    "net_terms": 210,
    "stored_credential_transaction_id": 40,
    "reference": "reference0",
    "on_hold_at": "2016-03-13T12:52:32.123Z",
    "prepaid_dunning": false,
    "coupons": [
      {
        "code": "code8",
        "use_count": 110,
        "uses_allowed": 156,
        "expires_at": "expires_at4",
        "recurring": false,
        "amount_in_cents": 118,
        "percentage": "percentage8"
      },
      {
        "code": "code8",
        "use_count": 110,
        "uses_allowed": 156,
        "expires_at": "expires_at4",
        "recurring": false,
        "amount_in_cents": 118,
        "percentage": "percentage8"
      }
    ],
    "dunning_communication_delay_enabled": false,
    "dunning_communication_delay_time_zone": "dunning_communication_delay_time_zone8",
    "receives_invoice_emails": false,
    "locale": "locale2",
    "currency": "currency4",
    "scheduled_cancellation_at": "2016-03-13T12:52:32.123Z",
    "credit_balance_in_cents": 74,
    "prepayment_balance_in_cents": 56,
    "prepaid_configuration": {
      "id": 142,
      "initial_funding_amount_in_cents": 74,
      "replenish_to_amount_in_cents": 76,
      "auto_replenish": false,
      "replenish_threshold_amount_in_cents": 20
    },
    "self_service_page_token": "self_service_page_token8"
  }
}
```

