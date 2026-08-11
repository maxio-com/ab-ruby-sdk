
# Update Component Price Point Request

## Structure

`UpdateComponentPricePointRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | [`UpdateComponentPricePoint`](../../doc/models/update-component-price-point.md) | Optional | - |

## Example

```ruby
update_component_price_point_request = UpdateComponentPricePointRequest.new(
  price_point: UpdateComponentPricePoint.new(
    name: 'name0',
    handle: 'handle6',
    pricing_scheme: PricingScheme::PER_UNIT,
    use_site_exchange_rate: false,
    tax_included: false
  )
)
```

