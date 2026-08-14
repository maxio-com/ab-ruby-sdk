
# Movement Line Item

## Structure

`MovementLineItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product_id` | `Integer` | Optional | - |
| `component_id` | `Integer` | Optional | For Product (or "baseline") line items, this field will have a value of `0`. |
| `price_point_id` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `mrr` | `Integer` | Optional | - |
| `mrr_movements` | [`Array[MRRMovement]`](../../doc/models/mrr-movement.md) | Optional | - |
| `quantity` | `Integer` | Optional | - |
| `prev_quantity` | `Integer` | Optional | - |
| `recurring` | `TrueClass \| FalseClass` | Optional | When `true`, the line item's MRR value will contribute to the `plan` breakout. When `false`, the line item contributes to the `usage` breakout. |

## Example

```ruby
movement_line_item = MovementLineItem.new(
  product_id: 60,
  component_id: 228,
  price_point_id: 4,
  name: 'name0',
  mrr: 250
)
```

