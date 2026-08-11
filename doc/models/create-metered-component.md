
# Create Metered Component

## Structure

`CreateMeteredComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metered_component` | [`MeteredComponent`](../../doc/models/metered-component.md) | Required | - |

## Example

```ruby
create_metered_component = CreateMeteredComponent.new(
  metered_component: MeteredComponent.new(
    name: 'name0',
    unit_name: 'unit_name2',
    pricing_scheme: PricingScheme::STAIRSTEP,
    description: 'description0',
    handle: 'handle6',
    taxable: false,
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
      ),
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
      ),
      ComponentPricePointItem.new(
        name: 'name2',
        handle: 'handle8',
        pricing_scheme: PricingScheme::PER_UNIT,
        interval: 92,
        interval_unit: IntervalUnit::DAY
      ),
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

