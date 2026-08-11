
# Overage Pricing

## Structure

`OveragePricing`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `pricing_scheme` | [`PricingScheme`](../../doc/models/pricing-scheme.md) | Required | The identifier for the pricing scheme. See [Product Components](https://help.chargify.com/products/product-components.html) for an overview of pricing schemes. |
| `prices` | [`Array[Price]`](../../doc/models/price.md) | Optional | - |

## Example

```ruby
overage_pricing = OveragePricing.new(
  pricing_scheme: PricingScheme::STAIRSTEP,
  prices: [
    Price.new(
      starting_quantity: 242,
      unit_price: 23.26,
      ending_quantity: 40
    )
  ]
)
```

