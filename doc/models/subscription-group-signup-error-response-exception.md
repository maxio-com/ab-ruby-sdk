
# Subscription Group Signup Error Response Exception

## Structure

`SubscriptionGroupSignupErrorResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`SubscriptionGroupSignupError`](../../doc/models/subscription-group-signup-error.md) | Required | - |

## Example

```ruby
begin
  # make the API call
rescue SubscriptionGroupSignupErrorResponseException => e
  puts "Caught SubscriptionGroupSignupErrorResponseException: #{e.message}"
end
```

