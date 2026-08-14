
# Bulk Update Segments Item

## Structure

`BulkUpdateSegmentsItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | The ID of the segment you want to update. |
| `pricing_scheme` | [`PricingScheme`](../../doc/models/pricing-scheme.md) | Required | The identifier for the pricing scheme. See [Product Components](https://help.chargify.com/products/product-components.html) for an overview of pricing schemes. |
| `prices` | [`Array[CreateOrUpdateSegmentPrice]`](../../doc/models/create-or-update-segment-price.md) | Required | - |

## Example

```ruby
bulk_update_segments_item = BulkUpdateSegmentsItem.new(
  id: 156,
  pricing_scheme: PricingScheme::PER_UNIT,
  prices: [
    CreateOrUpdateSegmentPrice.new(
      unit_price: 'String3',
      starting_quantity: 64,
      ending_quantity: 38
    )
  ]
)
```

