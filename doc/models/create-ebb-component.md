
# Create EBB Component

## Structure

`CreateEBBComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `event_based_component` | [`EBBComponent`](../../doc/models/ebb-component.md) | Required | - |

## Example

```ruby
create_ebb_component = CreateEBBComponent.new(
  event_based_component: EBBComponent.new(
    name: 'name8',
    unit_name: 'unit_name0',
    pricing_scheme: PricingScheme::STAIRSTEP,
    event_based_billing_metric_id: 68,
    description: 'description8',
    handle: 'handle4',
    taxable: false,
    prices: [
      Price.new(
        starting_quantity: 242,
        unit_price: 23.26,
        ending_quantity: 40
      )
    ],
    price_points: [
      ComponentPricePointItem.new(
        name: 'name2',
        handle: 'handle8',
        pricing_scheme: PricingScheme::PER_UNIT,
        interval: 92,
        interval_unit: IntervalUnit::DAY
      )
    ]
  )
)
```

