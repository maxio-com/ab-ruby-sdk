
# Segment Price Point Error Details

Price-point validation error details for segment writes.

## Structure

`SegmentPricePointErrorDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | `Array[String]` | Required | - |

## Example

```ruby
segment_price_point_error_details = SegmentPricePointErrorDetails.new(
  price_point: [
    'price_point8',
    'price_point9',
    'price_point0'
  ]
)
```

