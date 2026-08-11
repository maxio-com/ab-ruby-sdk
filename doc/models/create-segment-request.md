
# Create Segment Request

## Structure

`CreateSegmentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `segment` | [`CreateSegment`](../../doc/models/create-segment.md) | Required | - |

## Example

```ruby
create_segment_request = CreateSegmentRequest.new(
  segment: CreateSegment.new(
    pricing_scheme: PricingScheme::STAIRSTEP,
    segment_property_1_value: 'String1',
    segment_property_2_value: 'String3',
    segment_property_3_value: 'String1',
    segment_property_4_value: 'String5',
    prices: [
      CreateOrUpdateSegmentPrice.new(
        unit_price: 'String3',
        starting_quantity: 64,
        ending_quantity: 38
      ),
      CreateOrUpdateSegmentPrice.new(
        unit_price: 'String3',
        starting_quantity: 64,
        ending_quantity: 38
      ),
      CreateOrUpdateSegmentPrice.new(
        unit_price: 'String3',
        starting_quantity: 64,
        ending_quantity: 38
      )
    ]
  )
)
```

