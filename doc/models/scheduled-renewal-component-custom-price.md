
# Scheduled Renewal Component Custom Price

Custom pricing for a component within a scheduled renewal.

## Structure

`ScheduledRenewalComponentCustomPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `tax_included` | `TrueClass \| FalseClass` | Optional | Whether or not the price point includes tax |
| `pricing_scheme` | [`PricingScheme`](../../doc/models/pricing-scheme.md) | Required | Omit for On/Off components. |
| `prices` | [`Array[Price]`](../../doc/models/price.md) | Required | On/off components only need one price bracket starting at 1. |

## Example

```ruby
scheduled_renewal_component_custom_price = ScheduledRenewalComponentCustomPrice.new(
  pricing_scheme: PricingScheme::PER_UNIT,
  prices: [
    Price.new(
      starting_quantity: 242,
      unit_price: 23.26,
      ending_quantity: 40
    )
  ],
  tax_included: false
)
```

