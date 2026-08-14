
# Segment Response

## Structure

`SegmentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `segment` | [`Segment`](../../doc/models/segment.md) | Optional | - |

## Example

```ruby
segment_response = SegmentResponse.new(
  segment: Segment.new(
    id: 118,
    component_id: 228,
    price_point_id: 4,
    event_based_billing_metric_id: 56,
    pricing_scheme: PricingScheme::STAIRSTEP
  )
)
```

