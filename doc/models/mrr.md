
# MRR

## Structure

`MRR`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount_in_cents` | `Integer` | Optional | - |
| `amount_formatted` | `String` | Optional | - |
| `currency` | `String` | Optional | - |
| `currency_symbol` | `String` | Optional | - |
| `breakouts` | [`Breakouts`](../../doc/models/breakouts.md) | Optional | - |
| `at_time` | `DateTime` | Optional | ISO8601 timestamp |

## Example

```ruby
mrr = MRR.new(
  amount_in_cents: 198,
  amount_formatted: 'amount_formatted6',
  currency: 'currency4',
  currency_symbol: 'currency_symbol2',
  breakouts: Breakouts.new(
    plan_amount_in_cents: 254,
    plan_amount_formatted: 'plan_amount_formatted0',
    usage_amount_in_cents: 106,
    usage_amount_formatted: 'usage_amount_formatted8'
  )
)
```

