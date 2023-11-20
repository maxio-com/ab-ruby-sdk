
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
| `subscription_ids` | `Array<Integer>` | Optional | - |
| `primary_subscription_id` | `Integer` | Optional | - |
| `next_assessment_at` | `String` | Optional | - |
| `state` | `String` | Optional | - |
| `cancel_at_end_of_period` | `TrueClass \| FalseClass` | Optional | - |

## Example (as JSON)

```json
{
  "uid": "uid4",
  "scheme": 66,
  "customer_id": 86,
  "payment_profile_id": 250,
  "subscription_ids": [
    196,
    197
  ]
}
```

