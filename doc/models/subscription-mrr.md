
# Subscription MRR

## Structure

`SubscriptionMRR`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `Float` | Required | - |
| `mrr_amount_in_cents` | `Float` | Required | - |
| `breakouts` | [`SubscriptionMRRBreakout`](../../doc/models/subscription-mrr-breakout.md) | Optional | - |

## Example (as JSON)

```json
{
  "subscription_id": 58.92,
  "mrr_amount_in_cents": 133.34,
  "breakouts": {
    "plan_amount_in_cents": 138.22,
    "usage_amount_in_cents": 236.58
  }
}
```

