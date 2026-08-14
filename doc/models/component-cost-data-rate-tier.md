
# Component Cost Data Rate Tier

## Structure

`ComponentCostDataRateTier`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `starting_quantity` | `Integer` | Optional | - |
| `ending_quantity` | `Integer` | Optional | - |
| `quantity` | `String` | Optional | - |
| `unit_price` | `String` | Optional | - |
| `amount` | `String` | Optional | - |

## Example

```ruby
component_cost_data_rate_tier = ComponentCostDataRateTier.new(
  starting_quantity: 216,
  ending_quantity: 190,
  quantity: 'quantity0',
  unit_price: 'unit_price2',
  amount: 'amount6'
)
```

