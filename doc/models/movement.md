
# Movement

## Structure

`Movement`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `timestamp` | `DateTime` | Optional | - |
| `amount_in_cents` | `Integer` | Optional | - |
| `amount_formatted` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `category` | `String` | Optional | - |
| `breakouts` | [`Breakouts`](../../doc/models/breakouts.md) | Optional | - |
| `line_items` | [`Array[MovementLineItem]`](../../doc/models/movement-line-item.md) | Optional | - |
| `subscription_id` | `Integer` | Optional | - |
| `subscriber_name` | `String` | Optional | - |

## Example

```ruby
movement = Movement.new(
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  amount_in_cents: 34,
  amount_formatted: 'amount_formatted6',
  description: 'description4',
  category: 'category2'
)
```

