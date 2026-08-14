
# Update Subscription Component

## Structure

`UpdateSubscriptionComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component_id` | `Integer` | Optional | - |
| `custom_price` | [`ComponentCustomPrice`](../../doc/models/component-custom-price.md) | Optional | Create or update custom pricing unique to the subscription. Used in place of `price_point_id`. |

## Example

```ruby
update_subscription_component = UpdateSubscriptionComponent.new(
  component_id: 76,
  custom_price: ComponentCustomPrice.new(
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
    tax_included: false,
    pricing_scheme: PricingScheme::STAIRSTEP,
    interval: 66,
    interval_unit: IntervalUnit::DAY,
    list_price_point_id: 174
  )
)
```

