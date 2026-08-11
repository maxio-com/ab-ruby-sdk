
# Account Balance

## Structure

`AccountBalance`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `balance_in_cents` | `Integer` | Optional | The balance in cents. |
| `automatic_balance_in_cents` | `Integer` | Optional | The automatic balance in cents. |
| `remittance_balance_in_cents` | `Integer` | Optional | The remittance balance in cents. |

## Example

```ruby
account_balance = AccountBalance.new(
  balance_in_cents: 166,
  automatic_balance_in_cents: 76,
  remittance_balance_in_cents: 212
)
```

