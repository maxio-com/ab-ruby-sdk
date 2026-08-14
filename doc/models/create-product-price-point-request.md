
# Create Product Price Point Request

## Structure

`CreateProductPricePointRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | [`CreateProductPricePoint`](../../doc/models/create-product-price-point.md) | Required | - |

## Example

```ruby
create_product_price_point_request = CreateProductPricePointRequest.new(
  price_point: CreateProductPricePoint.new(
    name: 'name0',
    price_in_cents: 196,
    interval: 44,
    interval_unit: IntervalUnit::DAY,
    handle: 'handle6',
    trial_price_in_cents: 108,
    trial_interval: 202,
    trial_interval_unit: IntervalUnit::DAY,
    trial_type: TrialType::NO_OBLIGATION,
    use_site_exchange_rate: true
  )
)
```

