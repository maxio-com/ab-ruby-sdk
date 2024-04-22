
# Subscription Group Signup Failure Data

## Structure

`SubscriptionGroupSignupFailureData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payer_id` | `Integer` | Optional | - |
| `payer_reference` | `String` | Optional | - |
| `payment_profile_id` | `Integer` | Optional | - |
| `payment_collection_method` | `String` | Optional | - |
| `payer_attributes` | [`PayerAttributes`](../../doc/models/payer-attributes.md) | Optional | - |
| `credit_card_attributes` | [`SubscriptionGroupCreditCard`](../../doc/models/subscription-group-credit-card.md) | Optional | - |
| `bank_account_attributes` | [`SubscriptionGroupBankAccount`](../../doc/models/subscription-group-bank-account.md) | Optional | - |
| `subscriptions` | [`Array<SubscriptionGroupSignupItem>`](../../doc/models/subscription-group-signup-item.md) | Optional | - |

## Example (as JSON)

```json
{
  "payer_id": 16,
  "payer_reference": "payer_reference8",
  "payment_profile_id": 6,
  "payment_collection_method": "payment_collection_method0",
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

