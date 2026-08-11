
# Prepayment Account Balance Changed

## Structure

`PrepaymentAccountBalanceChanged`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `reason` | `String` | Required | - |
| `prepayment_account_balance_in_cents` | `Integer` | Required | - |
| `prepayment_balance_change_in_cents` | `Integer` | Required | - |
| `currency_code` | `String` | Required | - |

## Example

```ruby
prepayment_account_balance_changed = PrepaymentAccountBalanceChanged.new(
  reason: 'reason8',
  prepayment_account_balance_in_cents: 6,
  prepayment_balance_change_in_cents: 18,
  currency_code: 'currency_code2'
)
```

