
# Activate Event Based Component

## Structure

`ActivateEventBasedComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price_point_id` | `Integer` | Optional | The Chargify id of the price point |
| `billing_schedule` | [`BillingSchedule`](../../doc/models/billing-schedule.md) | Optional | Billing schedule settings for component allocations or usages on multi-frequency subscriptions. Use this to start a component's billing period on a custom date instead of aligning with the product charge schedule. |
| `custom_price` | [`ComponentCustomPrice`](../../doc/models/component-custom-price.md) | Optional | Create or update custom pricing unique to the subscription. Used in place of `price_point_id`. |

## Example

```ruby
activate_event_based_component = ActivateEventBasedComponent.new(
  price_point_id: 166,
  billing_schedule: BillingSchedule.new(
    initial_billing_at: Date.iso8601('2016-03-13')
  ),
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

