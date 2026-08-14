
# Create Component Price Point

## Structure

`CreateComponentPricePoint`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `handle` | `String` | Optional | - |
| `pricing_scheme` | [`PricingScheme`](../../doc/models/pricing-scheme.md) | Required | The identifier for the pricing scheme. See [Product Components](https://help.chargify.com/products/product-components.html) for an overview of pricing schemes. |
| `prices` | [`Array[Price]`](../../doc/models/price.md) | Required | - |
| `use_site_exchange_rate` | `TrueClass \| FalseClass` | Optional | Whether to use the site level exchange rate or define your own prices for each currency if you have multiple currencies defined on the site. Setting not supported when creating price points in bulk.<br><br>**Default**: `true` |
| `tax_included` | `TrueClass \| FalseClass` | Optional | Whether or not the price point includes tax. Setting not supported when creating price points in bulk. |
| `interval` | `Integer` | Optional | The numerical interval. e.g., an interval of ‘30’ coupled with an interval_unit of day would mean this price point would renew every 30 days. This property is only available for sites with Multifrequency enabled. |
| `interval_unit` | [`IntervalUnit`](../../doc/models/interval-unit.md) | Optional | A string representing the interval unit for this price point, either month or day. This property is only available for sites with Multifrequency enabled. |

## Example

```ruby
create_component_price_point = CreateComponentPricePoint.new(
  name: 'name4',
  pricing_scheme: PricingScheme::STAIRSTEP,
  prices: [
    Price.new(
      starting_quantity: 242,
      unit_price: 23.26,
      ending_quantity: 40
    )
  ],
  handle: 'handle0',
  use_site_exchange_rate: true,
  tax_included: false,
  interval: 70,
  interval_unit: IntervalUnit::DAY
)
```

