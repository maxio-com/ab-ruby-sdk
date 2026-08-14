
# Bulk Create Product Price Points Request

## Structure

`BulkCreateProductPricePointsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_points` | [`Array[CreateProductPricePoint]`](../../doc/models/create-product-price-point.md) | Required | - |

## Example

```ruby
bulk_create_product_price_points_request = BulkCreateProductPricePointsRequest.new(
  price_points: [
    CreateProductPricePoint.new(
      name: 'name2',
      price_in_cents: 108,
      interval: 92,
      interval_unit: IntervalUnit::DAY,
      handle: 'handle8',
      trial_price_in_cents: 196,
      trial_interval: 250,
      trial_interval_unit: IntervalUnit::DAY,
      trial_type: TrialType::NO_OBLIGATION,
      use_site_exchange_rate: true
    )
  ]
)
```

