
# Subscription Group Subscription Error

Object which contains subscription errors.

## Structure

`SubscriptionGroupSubscriptionError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product` | `Array<String>` | Optional | - |
| `product_price_point_id` | `Array<String>` | Optional | - |
| `payment_profile` | `Array<String>` | Optional | - |
| `payment_profile_chargify_token` | `Array<String>` | Optional | - |
| `base` | `Array<String>` | Optional | - |
| `payment_profile_expiration_month` | `Array<String>` | Optional | - |
| `payment_profile_expiration_year` | `Array<String>` | Optional | - |
| `payment_profile_full_number` | `Array<String>` | Optional | - |

## Example (as JSON)

```json
{
  "product": [
    "product7",
    "product6"
  ],
  "product_price_point_id": [
    "product_price_point_id9",
    "product_price_point_id0"
  ],
  "payment_profile": [
    "payment_profile4",
    "payment_profile5"
  ],
  "payment_profile.chargify_token": [
    "payment_profile.chargify_token8",
    "payment_profile.chargify_token9"
  ],
  "base": [
    "base7",
    "base8",
    "base9"
  ]
}
```

