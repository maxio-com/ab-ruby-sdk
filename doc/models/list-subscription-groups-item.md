
# List Subscription Groups Item

## Structure

`ListSubscriptionGroupsItem`

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
| `account_balances` | [`SubscriptionGroupBalances`](../../doc/models/subscription-group-balances.md) | Optional | - |

## Example (as JSON)

```json
{
  "uid": "uid0",
  "scheme": 124,
  "customer_id": 144,
  "payment_profile_id": 52,
  "subscription_ids": [
    254
  ]
}
```

