
# Bulk Create Segments

## Structure

`BulkCreateSegments`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `segments` | [`Array[CreateSegment]`](../../doc/models/create-segment.md) | Optional | **Constraints**: *Maximum Items*: `2000` |

## Example

```ruby
bulk_create_segments = BulkCreateSegments.new(
  segments: [
    CreateSegment.new(
      pricing_scheme: PricingScheme::STAIRSTEP,
      segment_property_1_value: 'String3',
      segment_property_2_value: 'String5',
      segment_property_3_value: 'String3',
      segment_property_4_value: 'String7',
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
    ),
    CreateSegment.new(
      pricing_scheme: PricingScheme::STAIRSTEP,
      segment_property_1_value: 'String3',
      segment_property_2_value: 'String5',
      segment_property_3_value: 'String3',
      segment_property_4_value: 'String7',
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
    ),
    CreateSegment.new(
      pricing_scheme: PricingScheme::STAIRSTEP,
      segment_property_1_value: 'String3',
      segment_property_2_value: 'String5',
      segment_property_3_value: 'String3',
      segment_property_4_value: 'String7',
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
  ]
)
```

