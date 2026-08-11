
# Subscription Group Prepayment Request

## Structure

`SubscriptionGroupPrepaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `prepayment` | [`SubscriptionGroupPrepayment`](../../doc/models/subscription-group-prepayment.md) | Required | - |

## Example

```ruby
subscription_group_prepayment_request = SubscriptionGroupPrepaymentRequest.new(
  prepayment: SubscriptionGroupPrepayment.new(
    amount: 136,
    details: 'details8',
    memo: 'memo2',
    method: SubscriptionGroupPrepaymentMethod::PAYPAL_ACCOUNT
  )
)
```

