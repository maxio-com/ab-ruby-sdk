
# Subscriptions Mrr Error Response Exception

## Structure

`SubscriptionsMrrErrorResponseException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`AttributeError`](../../doc/models/attribute-error.md) | Required | - |

## Example

```ruby
begin
  # make the API call
rescue SubscriptionsMrrErrorResponseException => e
  puts "Caught SubscriptionsMrrErrorResponseException: #{e.message}"
end
```

