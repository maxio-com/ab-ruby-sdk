
# Subscription Group Create Error Response Exception

## Structure

`SubscriptionGroupCreateErrorResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [Subscription Group Members Array Error](../../doc/models/subscription-group-members-array-error.md) \| [Subscription Group Single Error](../../doc/models/subscription-group-single-error.md) \| String | Required | This is a container for one-of cases. |

## Example

```ruby
begin
  # make the API call
rescue SubscriptionGroupCreateErrorResponseException => e
  puts "Caught SubscriptionGroupCreateErrorResponseException: #{e.message}"
end
```

