
# Reactivate Subscription Group Response

## Structure

`ReactivateSubscriptionGroupResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Optional | - |
| `scheme` | `Integer` | Optional | - |
| `customer_id` | `Integer` | Optional | - |
| `payment_profile_id` | `Integer` | Optional | - |
| `subscription_ids` | `Array[Integer]` | Optional | - |
| `primary_subscription_id` | `Integer` | Optional | - |
| `next_assessment_at` | `DateTime` | Optional | - |
| `state` | `String` | Optional | - |
| `cancel_at_end_of_period` | `TrueClass \| FalseClass` | Optional | - |

## Example

```ruby
reactivate_subscription_group_response = ReactivateSubscriptionGroupResponse.new(
  uid: 'uid8',
  scheme: 220,
  customer_id: 240,
  payment_profile_id: 148,
  subscription_ids: [
    94,
    95,
    96
  ]
)
```

