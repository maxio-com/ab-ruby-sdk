
# Create Prepaid Usage Component Price Point

## Structure

`CreatePrepaidUsageComponentPricePoint`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `handle` | `String` | Optional | - |
| `pricing_scheme` | [`PricingScheme`](../../doc/models/pricing-scheme.md) | Required | The identifier for the pricing scheme. See [Product Components](https://help.chargify.com/products/product-components.html) for an overview of pricing schemes. |
| `prices` | [`Array[Price]`](../../doc/models/price.md) | Required | - |
| `overage_pricing` | [`OveragePricing`](../../doc/models/overage-pricing.md) | Required | - |
| `use_site_exchange_rate` | `TrueClass \| FalseClass` | Optional | Whether to use the site level exchange rate or define your own prices for each currency if you have multiple currencies defined on the site.<br><br>**Default**: `true` |
| `rollover_prepaid_remainder` | `TrueClass \| FalseClass` | Optional | (only for prepaid usage components) Boolean which controls whether or not remaining units should be rolled over to the next period. |
| `renew_prepaid_allocation` | `TrueClass \| FalseClass` | Optional | (only for prepaid usage components) Boolean which controls whether or not the allocated quantity should be renewed at the beginning of each period. |
| `expiration_interval` | `Float` | Optional | (only for prepaid usage components where rollover_prepaid_remainder is true) The number of `expiration_interval_unit`s after which rollover amounts should expire. |
| `expiration_interval_unit` | [`ExpirationIntervalUnit`](../../doc/models/expiration-interval-unit.md) | Optional | (only for prepaid usage components where rollover_prepaid_remainder is true) A string representing the expiration interval unit for this component, either month or day. |

## Example

```ruby
create_prepaid_usage_component_price_point = CreatePrepaidUsageComponentPricePoint.new(
  name: 'name6',
  pricing_scheme: PricingScheme::PER_UNIT,
  prices: [
    Price.new(
      starting_quantity: 242,
      unit_price: 23.26,
      ending_quantity: 40
    )
  ],
  overage_pricing: OveragePricing.new(
    pricing_scheme: PricingScheme::STAIRSTEP,
    prices: [
      Price.new(
        starting_quantity: 242,
        unit_price: 23.26,
        ending_quantity: 40
      )
    ]
  ),
  handle: 'handle2',
  use_site_exchange_rate: true,
  rollover_prepaid_remainder: false,
  renew_prepaid_allocation: false,
  expiration_interval: 117.54
)
```

