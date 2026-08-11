
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
| `allocated_quantity` | Integer \| String \| nil | Optional | This is a container for one-of cases. |

## Example

```ruby
component_allocation_change = ComponentAllocationChange.new(
  previous_allocation: 124,
  new_allocation: 72,
  component_id: 118,
  component_handle: 'component_handle0',
  memo: 'memo4',
  allocation_id: 128,
  allocated_quantity: 134
)
```

