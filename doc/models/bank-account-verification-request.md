
# Bank Account Verification Request

## Structure

`BankAccountVerificationRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bank_account_verification` | [`BankAccountVerification`](../../doc/models/bank-account-verification.md) | Required | - |

## Example

```ruby
bank_account_verification_request = BankAccountVerificationRequest.new(
  bank_account_verification: BankAccountVerification.new(
    deposit_1_in_cents: 244,
    deposit_2_in_cents: 6
  )
)
```

