
# List Segments Response

## Structure

`ListSegmentsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `segments` | [`Array[Segment]`](../../doc/models/segment.md) | Optional | - |

## Example

```ruby
list_segments_response = ListSegmentsResponse.new(
  segments: [
    Segment.new(
      id: 50,
      component_id: 160,
      price_point_id: 184,
      event_based_billing_metric_id: 244,
      pricing_scheme: PricingScheme::STAIRSTEP
    )
  ]
)
```

