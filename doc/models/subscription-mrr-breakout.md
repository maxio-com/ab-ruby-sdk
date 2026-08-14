
# Subscription MRR Breakout

## Structure

`SubscriptionMRRBreakout`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_amount_in_cents` | `Integer` | Required | - |
| `usage_amount_in_cents` | `Integer` | Required | - |

## Example

```ruby
subscription_mrr_breakout = SubscriptionMRRBreakout.new(
  plan_amount_in_cents: 214,
  usage_amount_in_cents: 66
)
```

