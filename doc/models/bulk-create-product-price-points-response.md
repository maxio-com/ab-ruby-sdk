
# Bulk Create Product Price Points Response

## Structure

`BulkCreateProductPricePointsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_points` | [`Array[ProductPricePoint]`](../../doc/models/product-price-point.md) | Optional | - |

## Example

```ruby
bulk_create_product_price_points_response = BulkCreateProductPricePointsResponse.new(
  price_points: [
    ProductPricePoint.new(
      id: 40,
      name: 'name2',
      handle: 'handle8',
      price_in_cents: 108,
      interval: 92
    )
  ]
)
```

