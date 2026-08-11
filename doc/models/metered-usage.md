
# Metered Usage

## Structure

`MeteredUsage`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `previous_unit_balance` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `new_unit_balance` | Integer \| String | Required | This is a container for one-of cases. |
| `usage_quantity` | `Integer` | Required | - |
| `component_id` | `Integer` | Required | - |
| `component_handle` | `String` | Required | - |
| `memo` | `String` | Required | - |

## Example

```ruby
metered_usage = MeteredUsage.new(
  previous_unit_balance: 'previous_unit_balance2',
  new_unit_balance: 244,
  usage_quantity: 28,
  component_id: 246,
  component_handle: 'component_handle2',
  memo: 'memo6'
)
```

