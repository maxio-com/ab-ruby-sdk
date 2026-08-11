
# Update Segment Request

## Structure

`UpdateSegmentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `segment` | [`UpdateSegment`](../../doc/models/update-segment.md) | Required | - |

## Example

```ruby
update_segment_request = UpdateSegmentRequest.new(
  segment: UpdateSegment.new(
    pricing_scheme: PricingScheme::STAIRSTEP,
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

