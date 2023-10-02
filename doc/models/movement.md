
# Movement

## Structure

`Movement`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `timestamp` | `String` | Optional | - |
| `amount_in_cents` | `Integer` | Optional | - |
| `amount_formatted` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `category` | `String` | Optional | - |
| `breakouts` | [`Breakouts`](../../doc/models/breakouts.md) | Optional | - |
| `line_items` | [`Array<MovementLineItem>`](../../doc/models/movement-line-item.md) | Optional | - |
| `subscription_id` | `Integer` | Optional | - |
| `subscriber_name` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "timestamp": "timestamp0",
  "amount_in_cents": 174,
  "amount_formatted": "amount_formatted4",
  "description": "description2",
  "category": "category0"
}
```

