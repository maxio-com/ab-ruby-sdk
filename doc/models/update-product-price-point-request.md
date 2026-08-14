
# Update Product Price Point Request

## Structure

`UpdateProductPricePointRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | [`UpdateProductPricePoint`](../../doc/models/update-product-price-point.md) | Required | - |

## Example

```ruby
update_product_price_point_request = UpdateProductPricePointRequest.new(
  price_point: UpdateProductPricePoint.new(
    handle: 'handle6',
    price_in_cents: 196
  )
)
```

