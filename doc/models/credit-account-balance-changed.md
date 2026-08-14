
# Credit Account Balance Changed

## Structure

`CreditAccountBalanceChanged`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `reason` | `String` | Required | - |
| `service_credit_account_balance_in_cents` | `Integer` | Required | - |
| `service_credit_balance_change_in_cents` | `Integer` | Required | - |
| `currency_code` | `String` | Required | - |
| `at_time` | `DateTime` | Required | - |

## Example

```ruby
credit_account_balance_changed = CreditAccountBalanceChanged.new(
  reason: 'reason8',
  service_credit_account_balance_in_cents: 64,
  service_credit_balance_change_in_cents: 190,
  currency_code: 'currency_code8',
  at_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

