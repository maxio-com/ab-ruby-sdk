
# Subscription MRR Response

## Structure

`SubscriptionMRRResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscriptions_mrr` | [`Array[SubscriptionMRR]`](../../doc/models/subscription-mrr.md) | Required | **Constraints**: *Minimum Items*: `1`, *Unique Items Required* |

## Example

```ruby
subscription_mrr_response = SubscriptionMRRResponse.new(
  subscriptions_mrr: [
    SubscriptionMRR.new(
      subscription_id: 0,
      mrr_amount_in_cents: 0,
      breakouts: SubscriptionMRRBreakout.new(
        plan_amount_in_cents: 0,
        usage_amount_in_cents: 0
      )
    )
  ]
)
```

