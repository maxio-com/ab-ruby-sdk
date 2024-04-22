
# Create Subscription Request

## Structure

`CreateSubscriptionRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription` | [`CreateSubscription`](../../doc/models/create-subscription.md) | Required | - |

## Example (as JSON)

```json
{
  "subscription": {
    "payment_collection_method": "automatic",
    "metafields": {
      "custom_field_name_1": "custom_field_value_1",
      "custom_field_name_2": "custom_field_value_2"
    },
    "dunning_communication_delay_enabled": false,
    "dunning_communication_delay_time_zone": "\"Eastern Time (US & Canada)\"",
    "skip_billing_manifest_taxes": false,
    "product_handle": "product_handle6",
    "product_id": 206,
    "product_price_point_handle": "product_price_point_handle2",
    "product_price_point_id": 130,
    "custom_price": {
      "name": "name4",
      "handle": "handle0",
      "price_in_cents": "String3",
      "interval": "String3",
      "interval_unit": "day",
      "trial_price_in_cents": "String3",
      "trial_interval": "String5",
      "trial_interval_unit": "day",
      "initial_charge_in_cents": "String3",
      "initial_charge_after_trial": false,
      "expiration_interval": "String3",
      "expiration_interval_unit": "day",
      "tax_included": false
    },
    "coupon_code": "coupon_code0",
    "coupon_codes": [
      "coupon_codes8"
    ],
    "receives_invoice_emails": "receives_invoice_emails4",
    "net_terms": "net_terms0",
    "customer_id": 46,
    "next_billing_at": "2016-03-13T12:52:32.123Z",
    "initial_billing_at": "2016-03-13T12:52:32.123Z",
    "stored_credential_transaction_id": 40,
    "sales_rep_id": 96,
    "payment_profile_id": 210,
    "reference": "reference0",
    "customer_attributes": {
      "first_name": "first_name2",
      "last_name": "last_name0",
      "email": "email4",
      "cc_emails": "cc_emails8",
      "organization": "organization4",
      "reference": "reference2",
      "address": "address8",
      "address_2": "address_26",
      "city": "city8",
      "state": "state2",
      "zip": "zip4",
      "country": "country6",
      "phone": "phone8",
      "verified": false,
      "tax_exempt": false,
      "vat_number": "vat_number0",
      "metafields": {
        "key0": "metafields5"
      },
      "parent_id": 230
    },
    "payment_profile_attributes": {
      "chargify_token": "chargify_token4",
      "id": 102,
      "payment_type": "payment_type4",
      "first_name": "first_name6",
      "last_name": "last_name4",
      "masked_card_number": "masked_card_number4",
      "full_number": "full_number8",
      "card_type": "solo",
      "expiration_month": 158,
      "expiration_year": 188,
      "billing_address": "billing_address2",
      "billing_address_2": "billing_address_28",
      "billing_city": "billing_city6",
      "billing_state": "billing_state0",
      "billing_country": "billing_country0",
      "billing_zip": "billing_zip4",
      "current_vault": "cybersource",
      "vault_token": "vault_token8",
      "customer_vault_token": "customer_vault_token4",
      "customer_id": 140,
      "paypal_email": "paypal_email2",
      "payment_method_nonce": "payment_method_nonce2",
      "gateway_handle": "gateway_handle2",
      "cvv": "cvv4",
      "last_four": "last_four0"
    },
    "credit_card_attributes": {
      "chargify_token": "chargify_token8",
      "id": 104,
      "payment_type": "payment_type0",
      "first_name": "first_name0",
      "last_name": "last_name8",
      "masked_card_number": "masked_card_number8",
      "full_number": "full_number2",
      "card_type": "olimpica",
      "expiration_month": 200,
      "expiration_year": 170,
      "billing_address": "billing_address2",
      "billing_address_2": "billing_address_22",
      "billing_city": "billing_city8",
      "billing_state": "billing_state4",
      "billing_country": "billing_country4",
      "billing_zip": "billing_zip8",
      "current_vault": "unipaas",
      "vault_token": "vault_token2",
      "customer_vault_token": "customer_vault_token8",
      "customer_id": 142,
      "paypal_email": "paypal_email6",
      "payment_method_nonce": "payment_method_nonce6",
      "gateway_handle": "gateway_handle2",
      "cvv": "cvv8",
      "last_four": "last_four4"
    },
    "bank_account_attributes": {
      "chargify_token": "chargify_token6",
      "bank_name": "bank_name6",
      "bank_routing_number": "bank_routing_number4",
      "bank_account_number": "bank_account_number0",
      "bank_account_type": "checking",
      "bank_branch_code": "bank_branch_code2",
      "bank_iban": "bank_iban0",
      "bank_account_holder_type": "personal",
      "payment_type": "credit_card",
      "current_vault": "braintree_blue",
      "vault_token": "vault_token0",
      "customer_vault_token": "customer_vault_token6"
    },
    "components": [
      {
        "component_id": 30,
        "enabled": false,
        "unit_balance": 166,
        "allocated_quantity": 124,
        "quantity": 210,
        "price_point_id": 46,
        "custom_price": {
          "pricing_scheme": "stairstep",
          "interval": 66,
          "interval_unit": "day",
          "prices": [
            {
              "starting_quantity": 242,
              "ending_quantity": 40,
              "unit_price": 23.26
            },
            {
              "starting_quantity": 242,
              "ending_quantity": 40,
              "unit_price": 23.26
            }
          ]
        }
      }
    ],
    "calendar_billing": {
      "snap_day": 170,
      "calendar_billing_first_charge": "prorated"
    },
    "customer_reference": "customer_reference8",
    "group": {
      "target": {
        "type": "parent",
        "id": 236
      },
      "billing": {
        "accrue": false,
        "align_date": false,
        "prorate": false
      }
    },
    "ref": "ref4",
    "cancellation_message": "cancellation_message2",
    "cancellation_method": "cancellation_method2",
    "currency": "currency4",
    "expires_at": "2016-03-13T12:52:32.123Z",
    "expiration_tracks_next_billing_change": "expiration_tracks_next_billing_change6",
    "agreement_terms": "agreement_terms6",
    "authorizer_first_name": "authorizer_first_name0",
    "authorizer_last_name": "authorizer_last_name4",
    "calendar_billing_first_charge": "calendar_billing_first_charge2",
    "reason_code": "reason_code8",
    "product_change_delayed": false,
    "offer_id": "String9",
    "prepaid_configuration": {
      "initial_funding_amount_in_cents": 74,
      "replenish_to_amount_in_cents": 76,
      "auto_replenish": false,
      "replenish_threshold_amount_in_cents": 20
    },
    "previous_billing_at": "2016-03-13T12:52:32.123Z",
    "import_mrr": false,
    "canceled_at": "2016-03-13T12:52:32.123Z",
    "activated_at": "2016-03-13T12:52:32.123Z",
    "agreement_acceptance": {
      "ip_address": "ip_address8",
      "terms_url": "terms_url6",
      "privacy_policy_url": "privacy_policy_url4",
      "return_refund_policy_url": "return_refund_policy_url0",
      "delivery_policy_url": "delivery_policy_url4",
      "secure_checkout_policy_url": "secure_checkout_policy_url4"
    },
    "ach_agreement": {
      "agreement_terms": "agreement_terms0",
      "authorizer_first_name": "authorizer_first_name6",
      "authorizer_last_name": "authorizer_last_name8",
      "ip_address": "ip_address8"
    }
  }
}
```

