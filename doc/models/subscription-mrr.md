
# Subscription MRR

## Structure

`SubscriptionMRR`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `Integer` | Required | - |
| `mrr_amount_in_cents` | `Integer` | Required | - |
| `breakouts` | [`SubscriptionMRRBreakout`](../../doc/models/subscription-mrr-breakout.md) | Optional | - |

## Example

```ruby
subscription_mrr = SubscriptionMRR.new(
  subscription_id: 186,
  mrr_amount_in_cents: 204,
  breakouts: SubscriptionMRRBreakout.new(
    plan_amount_in_cents: 254,
    usage_amount_in_cents: 106
  )
)
```

