
# Create Quantity Based Component

## Structure

`CreateQuantityBasedComponent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `quantity_based_component` | [`QuantityBasedComponent`](../../doc/models/quantity-based-component.md) | Required | - |

## Example

```ruby
create_quantity_based_component = CreateQuantityBasedComponent.new(
  quantity_based_component: QuantityBasedComponent.new(
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
      )
    ],
    upgrade_charge: CreditType::PRORATED
  )
)
```

