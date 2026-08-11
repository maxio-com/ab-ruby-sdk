
# Event Based Billing List Segments Errors Exception

## Structure

`EventBasedBillingListSegmentsErrorsException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`Errors`](../../doc/models/errors.md) | Optional | - |

## Example

```ruby
begin
  # make the API call
rescue EventBasedBillingListSegmentsErrorsException => e
  puts "Caught EventBasedBillingListSegmentsErrorsException: #{e.message}"
end
```

