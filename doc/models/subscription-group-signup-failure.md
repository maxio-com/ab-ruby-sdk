
# Subscription Group Signup Failure

## Structure

`SubscriptionGroupSignupFailure`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_group` | [`SubscriptionGroupSignupFailureData`](../../doc/models/subscription-group-signup-failure-data.md) | Required | - |
| `customer` | `String` | Required | - |

## Example (as JSON)

```json
{
  "subscription_group": {
    "payer_id": 150,
    "payer_reference": "payer_reference6",
    "payment_profile_id": 128,
    "payment_collection_method": "payment_collection_method8",
    "payer_attributes": {
      "first_name": "first_name2",
      "last_name": "last_name0",
      "email": "email4",
      "cc_emails": "cc_emails2",
      "organization": "organization6",
      "reference": "reference8",
      "address": "address8",
      "address_2": "address_26",
      "city": "city2",
      "state": "state8",
      "zip": "zip6",
      "country": "country6",
      "phone": "phone2",
      "locale": "locale0",
      "vat_number": "vat_number0",
      "tax_exempt": false,
      "tax_exempt_reason": "tax_exempt_reason6",
      "metafields": {
        "key0": "metafields5",
        "key1": "metafields6",
        "key2": "metafields7"
      }
    },
    "credit_card_attributes": {
      "full_number": "String3",
      "expiration_month": "String7",
      "expiration_year": "String3",
      "chargify_token": "chargify_token8",
      "vault_token": "vault_token2",
      "current_vault": "unipaas",
      "gateway_handle": "gateway_handle2",
      "first_name": "first_name0",
      "last_name": "last_name8",
      "billing_address": "billing_address2",
      "billing_address_2": "billing_address_22",
      "billing_city": "billing_city8",
      "billing_state": "billing_state4",
      "billing_zip": "billing_zip8",
      "billing_country": "billing_country4",
      "last_four": "last_four4",
      "card_type": "olimpica",
      "customer_vault_token": "customer_vault_token8",
      "cvv": "cvv8",
      "payment_type": "payment_type0"
    },
    "bank_account_attributes": {
      "bank_name": "bank_name6",
      "bank_account_number": "bank_account_number0",
      "bank_routing_number": "bank_routing_number4",
      "bank_iban": "bank_iban0",
      "bank_branch_code": "bank_branch_code2",
      "bank_account_type": "checking",
      "bank_account_holder_type": "personal",
      "payment_type": "credit_card",
      "billing_address": "billing_address0",
      "billing_city": "billing_city4",
      "billing_state": "billing_state8",
      "billing_zip": "billing_zip6",
      "billing_country": "billing_country8",
      "chargify_token": "chargify_token6",
      "current_vault": "braintree_blue",
      "gateway_handle": "gateway_handle0"
    },
    "subscriptions": [
      {
        "product_handle": "product_handle8",
        "product_id": 144,
        "product_price_point_id": 68,
        "product_price_point_handle": "product_price_point_handle4",
        "offer_id": 40,
        "reference": "reference2",
        "primary": false,
        "currency": "currency6",
        "coupon_codes": [
          "coupon_codes0"
        ],
        "components": [
          {
            "component_id": "String5",
            "allocated_quantity": "String9",
            "unit_balance": "String3",
            "price_point_id": "String3",
            "custom_price": {
              "pricing_scheme": "stairstep",
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
              ],
              "overage_pricing": [
                {
                  "pricing_scheme": "stairstep",
                  "interval": 230,
                  "interval_unit": "day",
                  "prices": [
                    {
                      "starting_quantity": 242,
                      "ending_quantity": 40,
                      "unit_price": 23.26
                    }
                  ]
                },
                {
                  "pricing_scheme": "stairstep",
                  "interval": 230,
                  "interval_unit": "day",
                  "prices": [
                    {
                      "starting_quantity": 242,
                      "ending_quantity": 40,
                      "unit_price": 23.26
                    }
                  ]
                },
                {
                  "pricing_scheme": "stairstep",
                  "interval": 230,
                  "interval_unit": "day",
                  "prices": [
                    {
                      "starting_quantity": 242,
                      "ending_quantity": 40,
                      "unit_price": 23.26
                    }
                  ]
                }
              ]
            }
          }
        ],
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
        "calendar_billing": {
          "snap_day": 170,
          "calendar_billing_first_charge": "prorated"
        },
        "metafields": {
          "key0": "metafields9",
          "key1": "metafields0"
        }
      }
    ]
  },
  "customer": "customer8"
}
```

