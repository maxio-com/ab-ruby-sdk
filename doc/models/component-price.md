
# Component Price

## Structure

`ComponentPrice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `component_id` | `Integer` | Optional | - |
| `starting_quantity` | `Integer` | Optional | - |
| `ending_quantity` | `Integer` | Optional | - |
| `unit_price` | `String` | Optional | - |
| `price_point_id` | `Integer` | Optional | - |
| `formatted_unit_price` | `String` | Optional | - |
| `segment_id` | `Integer` | Optional | - |

## Example

```ruby
component_price = ComponentPrice.new(
  id: 38,
  component_id: 148,
  starting_quantity: 44,
  ending_quantity: 18,
  unit_price: 'unit_price8'
)
```

