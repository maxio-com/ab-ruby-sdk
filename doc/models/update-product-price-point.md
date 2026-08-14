
# Update Product Price Point

## Structure

`UpdateProductPricePoint`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `handle` | `String` | Optional | - |
| `price_in_cents` | `Integer` | Optional | - |

## Example

```ruby
update_product_price_point = UpdateProductPricePoint.new(
  handle: 'handle2',
  price_in_cents: 190
)
```

