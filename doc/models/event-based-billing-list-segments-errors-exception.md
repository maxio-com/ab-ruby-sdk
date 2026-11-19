
# Event Based Billing List Segments Errors Exception

## Structure

`EventBasedBillingListSegmentsErrorsException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`Errors1`](../../doc/models/errors-1.md) | Optional | - |

## Example

```ruby
begin
  # make the API call
rescue EventBasedBillingListSegmentsErrorsException => e
  puts "Caught EventBasedBillingListSegmentsErrorsException: #{e.message}"
end
```

