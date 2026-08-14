
# Created Prepayment

## Structure

`CreatedPrepayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | **Constraints**: `>= 1` |
| `subscription_id` | `Integer` | Optional | **Constraints**: `>= 1` |
| `amount_in_cents` | `Integer` | Optional | **Constraints**: `>= 0.01` |
| `memo` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `starting_balance_in_cents` | `Integer` | Optional | **Constraints**: `>= 0` |
| `ending_balance_in_cents` | `Integer` | Optional | - |

## Example

```ruby
created_prepayment = CreatedPrepayment.new(
  id: 228,
  subscription_id: 82,
  amount_in_cents: 198,
  memo: 'memo6',
  created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

