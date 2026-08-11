
# MRR Movement

## Structure

`MRRMovement`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Optional | - |
| `category` | `String` | Optional | - |
| `subscriber_delta` | `Integer` | Optional | - |
| `lead_delta` | `Integer` | Optional | - |

## Example

```ruby
mrr_movement = MRRMovement.new(
  amount: 74,
  category: 'category0',
  subscriber_delta: 34,
  lead_delta: 62
)
```

