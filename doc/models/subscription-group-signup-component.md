
# Subscription Group Signup Component

## Structure

`SubscriptionGroupSignupComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `component_id` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `allocated_quantity` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `unit_balance` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `price_point_id` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `custom_price` | [`SubscriptionGroupComponentCustomPrice`](../../doc/models/subscription-group-component-custom-price.md) | Optional | Used in place of `price_point_id` to define a custom price point unique to the subscription. You still need to provide `component_id`. |

## Example

```ruby
subscription_group_signup_component = SubscriptionGroupSignupComponent.new(
  component_id: 'String9',
  allocated_quantity: 'String3',
  unit_balance: 'String7',
  price_point_id: 'String9',
  custom_price: SubscriptionGroupComponentCustomPrice.new(
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
)
```

