
# Bank Account Verification

## Structure

`BankAccountVerification`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `deposit_1_in_cents` | `Integer` | Optional | - |
| `deposit_2_in_cents` | `Integer` | Optional | - |

## Example

```ruby
bank_account_verification = BankAccountVerification.new(
  deposit_1_in_cents: 244,
  deposit_2_in_cents: 6
)
```

