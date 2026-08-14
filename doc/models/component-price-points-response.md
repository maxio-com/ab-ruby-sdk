
# Component Price Points Response

## Structure

`ComponentPricePointsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_points` | [`Array[ComponentPricePoint]`](../../doc/models/component-price-point.md) | Optional | - |
| `meta` | [`ListPublicKeysMeta`](../../doc/models/list-public-keys-meta.md) | Optional | - |

## Example

```ruby
component_price_points_response = ComponentPricePointsResponse.new(
  price_points: [
    ComponentPricePoint.new(
      id: 40,
      type: PricePointType::DEFAULT,
      default: false,
      name: 'name2',
      pricing_scheme: PricingScheme::PER_UNIT
    ),
    ComponentPricePoint.new(
      id: 40,
      type: PricePointType::DEFAULT,
      default: false,
      name: 'name2',
      pricing_scheme: PricingScheme::PER_UNIT
    )
  ],
  meta: ListPublicKeysMeta.new(
    total_count: 150,
    current_page: 126,
    total_pages: 138,
    per_page: 152
  )
)
```

