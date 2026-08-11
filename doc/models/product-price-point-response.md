
# Product Price Point Response

## Structure

`ProductPricePointResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | [`ProductPricePoint`](../../doc/models/product-price-point.md) | Required | - |

## Example

```ruby
product_price_point_response = ProductPricePointResponse.new(
  price_point: ProductPricePoint.new(
    id: 248,
    name: 'name0',
    handle: 'handle6',
    price_in_cents: 196,
    interval: 44
  )
)
```

