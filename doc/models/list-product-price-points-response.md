
# List Product Price Points Response

## Structure

`ListProductPricePointsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_points` | [`Array[ProductPricePoint]`](../../doc/models/product-price-point.md) | Required | - |

## Example

```ruby
list_product_price_points_response = ListProductPricePointsResponse.new(
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

