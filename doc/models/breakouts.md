
# Breakouts

## Structure

`Breakouts`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_amount_in_cents` | `Integer` | Optional | - |
| `plan_amount_formatted` | `String` | Optional | - |
| `usage_amount_in_cents` | `Integer` | Optional | - |
| `usage_amount_formatted` | `String` | Optional | - |

## Example

```ruby
breakouts = Breakouts.new(
  plan_amount_in_cents: 254,
  plan_amount_formatted: 'plan_amount_formatted0',
  usage_amount_in_cents: 106,
  usage_amount_formatted: 'usage_amount_formatted8'
)
```

