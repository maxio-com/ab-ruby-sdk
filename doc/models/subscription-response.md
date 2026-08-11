
# Subscription Response

## Structure

`SubscriptionResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription` | [`Subscription`](../../doc/models/subscription.md) | Optional | - |

## Example

```ruby
subscription_response = SubscriptionResponse.new(
  subscription: Subscription.new(
    id: 8,
    state: SubscriptionState::PAUSED,
    balance_in_cents: 124,
    total_revenue_in_cents: 48,
    product_price_in_cents: 238
  )
)
```

