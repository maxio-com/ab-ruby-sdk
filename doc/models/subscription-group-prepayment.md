
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

## Example

```ruby
subscription_group_prepayment = SubscriptionGroupPrepayment.new(
  amount: 118,
  details: 'details8',
  memo: 'memo2',
  method: SubscriptionGroupPrepaymentMethod::CHECK
)
```

