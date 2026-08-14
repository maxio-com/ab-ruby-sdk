
# Usage

## Structure

`Usage`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | **Constraints**: `>= 0` |
| `memo` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `price_point_id` | `Integer` | Optional | - |
| `quantity` | Integer \| String \| nil | Optional | This is a container for one-of cases. |
| `overage_quantity` | `Integer` | Optional | - |
| `component_id` | `Integer` | Optional | - |
| `component_handle` | `String` | Optional | - |
| `subscription_id` | `Integer` | Optional | - |

## Example

```ruby
usage = Usage.new(
  id: 150,
  memo: 'memo2',
  created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  price_point_id: 28,
  quantity: 28
)
```

