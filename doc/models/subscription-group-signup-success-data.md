
# Subscription Group Signup Success Data

## Structure

`SubscriptionGroupSignupSuccessData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Required | - |
| `scheme` | `Integer` | Required | - |
| `customer_id` | `Integer` | Required | - |
| `payment_profile_id` | `Integer` | Required | - |
| `subscription_ids` | `Array<Integer>` | Required | - |
| `primary_subscription_id` | `Integer` | Required | - |
| `next_assessment_at` | `String` | Required | - |
| `state` | `String` | Required | - |
| `cancel_at_end_of_period` | `TrueClass \| FalseClass` | Required | - |

## Example (as JSON)

```json
{
  "uid": "uid8",
  "scheme": 154,
  "customer_id": 174,
  "payment_profile_id": 82,
  "subscription_ids": [
    28,
    29
  ],
  "primary_subscription_id": 102,
  "next_assessment_at": "next_assessment_at2",
  "state": "state4",
  "cancel_at_end_of_period": false
}
```

