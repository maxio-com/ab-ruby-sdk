
# Full Subscription Group Response

## Structure

`FullSubscriptionGroupResponse`

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
| `current_billing_amount_in_cents` | `Integer` | Optional | - |
| `customer` | [`SubscriptionGroupCustomer`](../../doc/models/subscription-group-customer.md) | Optional | - |
| `account_balances` | [`SubscriptionGroupBalances`](../../doc/models/subscription-group-balances.md) | Optional | - |

## Example (as JSON)

```json
{
  "uid": "uid8",
  "scheme": 90,
  "customer_id": 110,
  "payment_profile_id": 18,
  "subscription_ids": [
    220,
    221,
    222
  ]
}
```

