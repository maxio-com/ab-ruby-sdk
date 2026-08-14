
# Cancel Grouped Subscriptions Request

## Structure

`CancelGroupedSubscriptionsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_unbilled_usage` | `TrueClass \| FalseClass` | Optional | - |

## Example

```ruby
cancel_grouped_subscriptions_request = CancelGroupedSubscriptionsRequest.new(
  charge_unbilled_usage: false
)
```

