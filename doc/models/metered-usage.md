
# Metered Usage

## Structure

`MeteredUsage`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `previous_unit_balance` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `new_unit_balance` | `Integer` | Required | - |
| `usage_quantity` | `Integer` | Required | - |
| `component_id` | `Integer` | Required | - |
| `component_handle` | `String` | Required | - |
| `memo` | `String` | Required | - |

## Example (as JSON)

```json
{
  "previous_unit_balance": "previous_unit_balance6",
  "new_unit_balance": 80,
  "usage_quantity": 42,
  "component_id": 4,
  "component_handle": "component_handle8",
  "memo": "memo2"
}
```

