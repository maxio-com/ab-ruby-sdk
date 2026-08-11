
# List Subscription Group Prepayment

## Structure

`ListSubscriptionGroupPrepayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `prepayment` | [`ListSubscriptionGroupPrepaymentItem`](../../doc/models/list-subscription-group-prepayment-item.md) | Required | - |

## Example

```ruby
list_subscription_group_prepayment = ListSubscriptionGroupPrepayment.new(
  prepayment: ListSubscriptionGroupPrepaymentItem.new(
    id: 38,
    subscription_group_uid: 'subscription_group_uid2',
    amount_in_cents: 124,
    remaining_amount_in_cents: 182,
    details: 'details8'
  )
)
```

