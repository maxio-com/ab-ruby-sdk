
# Subscription Response Error Exception

## Structure

`SubscriptionResponseErrorException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription` | [`Subscription`](../../doc/models/subscription.md) | Optional | - |

## Example

```ruby
begin
  # make the API call
rescue SubscriptionResponseErrorException => e
  puts "Caught SubscriptionResponseErrorException: #{e.message}"
end
```

