
# Event Based Billing Segment Exception

## Structure

`EventBasedBillingSegmentException`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `errors` | [`EventBasedBillingSegmentError`](../../doc/models/event-based-billing-segment-error.md) | Required | - |

## Example

```ruby
begin
  # make the API call
rescue EventBasedBillingSegmentException => e
  puts "Caught EventBasedBillingSegmentException: #{e.message}"
end
```

