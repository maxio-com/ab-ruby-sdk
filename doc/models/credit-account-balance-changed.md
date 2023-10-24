
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
| `at_time` | `String` | Required | - |

## Example (as JSON)

```json
{
  "reason": "reason8",
  "service_credit_account_balance_in_cents": 10,
  "service_credit_balance_change_in_cents": 116,
  "currency_code": "currency_code8",
  "at_time": "at_time0"
}
```

