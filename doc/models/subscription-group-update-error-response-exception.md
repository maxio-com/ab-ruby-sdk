
# Subscription Group Update Error Response Exception

## Structure

`SubscriptionGroupUpdateErrorResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`SubscriptionGroupUpdateError`](../../doc/models/subscription-group-update-error.md) | Optional | - |

## Example

```ruby
begin
  # make the API call
rescue SubscriptionGroupUpdateErrorResponseException => e
  puts "Caught SubscriptionGroupUpdateErrorResponseException: #{e.message}"
end
```

