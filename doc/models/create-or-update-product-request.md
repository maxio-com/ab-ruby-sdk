
# Create or Update Product Request

## Structure

`CreateOrUpdateProductRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product` | [`CreateOrUpdateProduct`](../../doc/models/create-or-update-product.md) | Required | - |

## Example

```ruby
create_or_update_product_request = CreateOrUpdateProductRequest.new(
  product: CreateOrUpdateProduct.new(
    name: 'name0',
    description: 'description0',
    price_in_cents: 54,
    interval: 186,
    interval_unit: IntervalUnit::DAY,
    handle: 'handle6',
    accounting_code: 'accounting_code6',
    require_credit_card: false,
    trial_price_in_cents: 34,
    trial_interval: 88
  )
)
```

