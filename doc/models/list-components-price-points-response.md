
# List Components Price Points Response

## Structure

`ListComponentsPricePointsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_points` | [`Array[ComponentPricePoint]`](../../doc/models/component-price-point.md) | Required | - |

## Example

```ruby
list_components_price_points_response = ListComponentsPricePointsResponse.new(
  price_points: [
    ComponentPricePoint.new(
      id: 40,
      type: PricePointType::DEFAULT,
      default: false,
      name: 'name2',
      pricing_scheme: PricingScheme::PER_UNIT
    )
  ]
)
```

