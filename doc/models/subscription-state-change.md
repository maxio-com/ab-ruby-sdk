
# Subscription State Change

## Structure

`SubscriptionStateChange`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `previous_subscription_state` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `new_subscription_state` | `String` | Required | **Constraints**: *Minimum Length*: `1` |

## Example

```ruby
subscription_state_change = SubscriptionStateChange.new(
  previous_subscription_state: 'previous_subscription_state4',
  new_subscription_state: 'new_subscription_state8'
)
```

