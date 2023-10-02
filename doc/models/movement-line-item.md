
# Movement Line Item

## Structure

`MovementLineItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `product_id` | `Integer` | Optional | - |
| `component_id` | `Integer` | Optional | For Product (or "baseline") line items, this field will have a value of `0`. |
| `name` | `String` | Optional | - |
| `mrr` | `Integer` | Optional | - |
| `mrr_movements` | [`Array<MRRMovement>`](../../doc/models/mrr-movement.md) | Optional | - |
| `quantity` | `Integer` | Optional | - |
| `prev_quantity` | `Integer` | Optional | - |
| `recurring` | `TrueClass \| FalseClass` | Optional | When `true`, the line item's MRR value will contribute to the `plan` breakout. When `false`, the line item contributes to the `usage` breakout. |

## Example (as JSON)

```json
{
  "product_id": 156,
  "component_id": 68,
  "name": "name6",
  "mrr": 154,
  "mrr_movements": [
    {
      "amount": 90,
      "category": "category4"
    },
    {
      "amount": 90,
      "category": "category4"
    },
    {
      "amount": 90,
      "category": "category4"
    }
  ]
}
```

