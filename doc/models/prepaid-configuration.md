
# Prepaid Configuration

## Structure

`PrepaidConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `initial_funding_amount_in_cents` | `Integer` | Optional | - |
| `replenish_to_amount_in_cents` | `Integer` | Optional | - |
| `auto_replenish` | `TrueClass \| FalseClass` | Optional | - |
| `replenish_threshold_amount_in_cents` | `Integer` | Optional | - |

## Example

```ruby
prepaid_configuration = PrepaidConfiguration.new(
  id: 142,
  initial_funding_amount_in_cents: 74,
  replenish_to_amount_in_cents: 76,
  auto_replenish: false,
  replenish_threshold_amount_in_cents: 20
)
```

