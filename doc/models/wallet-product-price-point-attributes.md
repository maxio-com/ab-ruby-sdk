
# Wallet Product Price Point Attributes

A price point to create for the Wallet Product, in the same call that creates or updates it.

## Structure

`WalletProductPricePointAttributes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | The price point's name. Required. Omitting it fails validation with a message that reads `Name: cannot be blank.`, not naming the price point. |
| `handle` | `String` | Optional | - |
| `pricing_scheme` | [`PricingScheme`](../../doc/models/pricing-scheme.md) | Optional | The identifier for the pricing scheme. See [Product Components](https://help.chargify.com/products/product-components.html) for an overview of pricing schemes. |
| `unit_price` | `String` | Optional | Required when `pricing_scheme` is `per_unit`. |
| `tax_included` | `TrueClass \| FalseClass` | Optional | - |
| `interval` | `Integer` | Optional | Requires Multifrequency to be enabled on the site. |
| `interval_unit` | [`IntervalUnit`](../../doc/models/interval-unit.md) | Optional | - |
| `use_site_exchange_rate` | `TrueClass \| FalseClass` | Optional | - |
| `prices` | [`Array[Price1]`](../../doc/models/price-1.md) | Optional | Required for every `pricing_scheme` other than `per_unit`. |

## Example

```ruby
wallet_product_price_point_attributes = WalletProductPricePointAttributes.new(
  name: 'name4',
  handle: 'handle0',
  pricing_scheme: PricingScheme::PER_UNIT,
  unit_price: 'unit_price2',
  tax_included: false,
  interval: 8
)
```

