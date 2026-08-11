
# Component Price Point Response

## Structure

`ComponentPricePointResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point` | [`ComponentPricePoint`](../../doc/models/component-price-point.md) | Required | - |

## Example

```ruby
component_price_point_response = ComponentPricePointResponse.new(
  price_point: ComponentPricePoint.new(
    id: 248,
    type: PricePointType::DEFAULT,
    default: false,
    name: 'name0',
    pricing_scheme: PricingScheme::PER_UNIT
  )
)
```

