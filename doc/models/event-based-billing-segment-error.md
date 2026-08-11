
# Event Based Billing Segment Error

## Structure

`EventBasedBillingSegmentError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `segments` | `Hash[String, Object]` | Required | The key of the object would be a number (an index in the request array) where the error occurred. In the value object, the key represents the field and the value is an array with error messages. In most cases, this object would contain just one key. |

## Example

```ruby
event_based_billing_segment_error = EventBasedBillingSegmentError.new(
  segments: {
    'key0': JSON.parse('{"key1":"val1","key2":"val2"}'),
    'key1': JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

