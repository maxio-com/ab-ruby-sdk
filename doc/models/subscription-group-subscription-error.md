
# Subscription Group Subscription Error

Object which contains subscription errors.

## Structure

`SubscriptionGroupSubscriptionError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product` | `Array[String]` | Optional | - |
| `product_price_point_id` | `Array[String]` | Optional | - |
| `payment_profile` | `Array[String]` | Optional | - |
| `payment_profile_chargify_token` | `Array[String]` | Optional | - |
| `base` | `Array[String]` | Optional | - |
| `payment_profile_expiration_month` | `Array[String]` | Optional | - |
| `payment_profile_expiration_year` | `Array[String]` | Optional | - |
| `payment_profile_full_number` | `Array[String]` | Optional | - |

## Example

```ruby
subscription_group_subscription_error = SubscriptionGroupSubscriptionError.new(
  product: [
    'product1'
  ],
  product_price_point_id: [
    'product_price_point_id7'
  ],
  payment_profile: [
    'payment_profile2'
  ],
  payment_profile_chargify_token: [
    'payment_profile.chargify_token6'
  ],
  base: [
    'base5',
    'base6'
  ]
)
```

