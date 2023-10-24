
# Subscription Group Prepayment

## Structure

`SubscriptionGroupPrepayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | - |
| `details` | `String` | Required | - |
| `memo` | `String` | Required | - |
| `method` | [`SubscriptionGroupPrepaymentMethod`](../../doc/models/subscription-group-prepayment-method.md) | Required | - |

## Example (as JSON)

```json
{
  "amount": 96,
  "details": "details2",
  "memo": "memo6",
  "method": "money_order"
}
```

