
# List Subscription Group Prepayment Response

## Structure

`ListSubscriptionGroupPrepaymentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `prepayments` | [`Array[ListSubscriptionGroupPrepayment]`](../../doc/models/list-subscription-group-prepayment.md) | Required | - |

## Example

```ruby
list_subscription_group_prepayment_response = ListSubscriptionGroupPrepaymentResponse.new(
  prepayments: [
    ListSubscriptionGroupPrepayment.new(
      prepayment: ListSubscriptionGroupPrepaymentItem.new(
        id: 38,
        subscription_group_uid: 'subscription_group_uid2',
        amount_in_cents: 124,
        remaining_amount_in_cents: 182,
        details: 'details8'
      )
    )
  ]
)
```

