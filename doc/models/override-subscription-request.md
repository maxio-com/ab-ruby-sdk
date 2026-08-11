
# Override Subscription Request

## Structure

`OverrideSubscriptionRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription` | [`OverrideSubscription`](../../doc/models/override-subscription.md) | Required | - |

## Example

```ruby
override_subscription_request = OverrideSubscriptionRequest.new(
  subscription: OverrideSubscription.new(
    activated_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    canceled_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    cancellation_message: 'cancellation_message2',
    expires_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    current_period_starts_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  )
)
```

