
# Bank Account Response

## Structure

`BankAccountResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_profile` | [`BankAccountPaymentProfile`](../../doc/models/bank-account-payment-profile.md) | Required | - |

## Example

```ruby
bank_account_response = BankAccountResponse.new(
  payment_profile: BankAccountPaymentProfile.new(
    payment_type: PaymentType::BANK_ACCOUNT,
    id: 44,
    first_name: 'first_name4',
    last_name: 'last_name2',
    customer_id: 82,
    current_vault: BankAccountVault::AUTHORIZENET,
    verified: false
  )
)
```

