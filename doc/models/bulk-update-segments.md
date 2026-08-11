
# Bulk Update Segments

## Structure

`BulkUpdateSegments`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `segments` | [`Array[BulkUpdateSegmentsItem]`](../../doc/models/bulk-update-segments-item.md) | Optional | **Constraints**: *Maximum Items*: `1000` |

## Example

```ruby
bulk_update_segments = BulkUpdateSegments.new(
  segments: [
    BulkUpdateSegmentsItem.new(
      id: 50,
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
    ),
    BulkUpdateSegmentsItem.new(
      id: 50,
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
  ]
)
```

