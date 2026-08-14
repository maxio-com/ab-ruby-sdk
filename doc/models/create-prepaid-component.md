
# Create Prepaid Component

## Structure

`CreatePrepaidComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `prepaid_usage_component` | [`PrepaidUsageComponent`](../../doc/models/prepaid-usage-component.md) | Required | - |

## Example

```ruby
create_prepaid_component = CreatePrepaidComponent.new(
  prepaid_usage_component: PrepaidUsageComponent.new(
    name: 'name2',
    unit_name: 'unit_name4',
    pricing_scheme: PricingScheme::PER_UNIT,
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
    description: 'description2',
    handle: 'handle8',
    taxable: false,
    prices: [
      Price.new(
        starting_quantity: 242,
        unit_price: 23.26,
        ending_quantity: 40
      )
    ],
    upgrade_charge: CreditType::FULL
  )
)
```

