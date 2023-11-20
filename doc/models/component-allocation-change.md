
# Component Allocation Change

## Structure

`ComponentAllocationChange`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `previous_allocation` | `Integer` | Required | - |
| `new_allocation` | `Integer` | Required | - |
| `component_id` | `Integer` | Required | - |
| `component_handle` | `String` | Required | - |
| `memo` | `String` | Required | - |
| `allocation_id` | `Integer` | Required | - |
| `allocated_quantity` | `Integer` | Optional | - |

## Example (as JSON)

```json
{
  "previous_allocation": 94,
  "new_allocation": 102,
  "component_id": 88,
  "component_handle": "component_handle8",
  "memo": "memo2",
  "allocation_id": 158,
  "allocated_quantity": 182
}
```

