
# Subscription Group Component Custom Price

Used in place of `price_point_id` to define a custom price point unique to the subscription. You still need to provide `component_id`.

## Structure

`SubscriptionGroupComponentCustomPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `pricing_scheme` | [`PricingScheme`](../../doc/models/pricing-scheme.md) | Optional | The identifier for the pricing scheme. See [Product Components](https://help.chargify.com/products/product-components.html) for an overview of pricing schemes. |
| `prices` | [`Array[Price]`](../../doc/models/price.md) | Optional | - |
| `overage_pricing` | [`Array[ComponentCustomPrice]`](../../doc/models/component-custom-price.md) | Optional | - |

## Example

```ruby
subscription_group_component_custom_price = SubscriptionGroupComponentCustomPrice.new(
  pricing_scheme: PricingScheme::STAIRSTEP,
  prices: [
    Price.new(
      starting_quantity: 242,
      unit_price: 23.26,
      ending_quantity: 40
    ),
    Price.new(
      starting_quantity: 242,
      unit_price: 23.26,
      ending_quantity: 40
    )
  ],
  overage_pricing: [
    ComponentCustomPrice.new(
      prices: [
        Price.new(
          starting_quantity: 242,
          unit_price: 23.26,
          ending_quantity: 40
        )
      ],
      tax_included: false,
      pricing_scheme: PricingScheme::STAIRSTEP,
      interval: 230,
      interval_unit: IntervalUnit::DAY,
      list_price_point_id: 10
    ),
    ComponentCustomPrice.new(
      prices: [
        Price.new(
          starting_quantity: 242,
          unit_price: 23.26,
          ending_quantity: 40
        )
      ],
      tax_included: false,
      pricing_scheme: PricingScheme::STAIRSTEP,
      interval: 230,
      interval_unit: IntervalUnit::DAY,
      list_price_point_id: 10
    )
  ]
)
```

