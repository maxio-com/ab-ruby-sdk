
# Subscription Group Signup

## Structure

`SubscriptionGroupSignup`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_profile_id` | `Integer` | Optional | - |
| `payer_id` | `Integer` | Optional | - |
| `payer_reference` | `String` | Optional | - |
| `payment_collection_method` | [`CollectionMethod`](../../doc/models/collection-method.md) | Optional | The type of payment collection to be used in the subscription. For legacy Statements Architecture valid options are - `invoice`, `automatic`. For current Relationship Invoicing Architecture valid options are - `remittance`, `automatic`, `prepaid`.<br>**Default**: `CollectionMethod::AUTOMATIC` |
| `payer_attributes` | [`PayerAttributes`](../../doc/models/payer-attributes.md) | Optional | - |
| `credit_card_attributes` | [`SubscriptionGroupCreditCard`](../../doc/models/subscription-group-credit-card.md) | Optional | - |
| `bank_account_attributes` | [`SubscriptionGroupBankAccount`](../../doc/models/subscription-group-bank-account.md) | Optional | - |
| `subscriptions` | [`Array<SubscriptionGroupSignupItem>`](../../doc/models/subscription-group-signup-item.md) | Required | - |

## Example (as JSON)

```json
{
  "payment_collection_method": "automatic",
  "subscriptions": [
    {
      "metafields": {
        "custom_field_name_1": "custom_field_value_1",
        "custom_field_name_2": "custom_field_value_2"
      },
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
      }
    }
  ],
  "payment_profile_id": 42,
  "payer_id": 64,
  "payer_reference": "payer_reference8",
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
  }
}
```

