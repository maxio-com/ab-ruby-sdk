
# Bank Account Attributes

## Structure

`BankAccountAttributes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `chargify_token` | `String` | Optional | - |
| `bank_name` | `String` | Optional | (Required when creating a subscription with ACH or GoCardless) The name of the bank where the customer’s account resides |
| `bank_routing_number` | `String` | Optional | (Required when creating a subscription with ACH; optional when creating a subscription with GoCardless). The routing number of the bank. It becomes bank_code while passing via GoCardless API. |
| `bank_account_number` | `String` | Optional | (Required when creating a subscription with ACH. Required when creating a subscription with GoCardless and bank_iban is blank) The customerʼs bank account number |
| `bank_account_type` | [`BankAccountType`](../../doc/models/bank-account-type.md) | Optional | Defaults to checking |
| `bank_branch_code` | `String` | Optional | (Optional when creating a subscription with GoCardless) Branch code. Alternatively, an IBAN can be provided. |
| `bank_iban` | `String` | Optional | (Optional when creating a subscription with GoCardless). International Bank Account Number. Alternatively, local bank details can be provided. |
| `bank_account_holder_type` | [`BankAccountHolderType`](../../doc/models/bank-account-holder-type.md) | Optional | Defaults to personal |
| `payment_type` | [`PaymentType`](../../doc/models/payment-type.md) | Optional | - |
| `current_vault` | [`BankAccountVault`](../../doc/models/bank-account-vault.md) | Optional | The vault that stores the payment profile with the provided vault_token. Use `bogus` for testing. |
| `vault_token` | `String` | Optional | - |
| `customer_vault_token` | `String` | Optional | (only for Authorize.Net CIM storage or Square) The customerProfileId for the owner of the customerPaymentProfileId provided as the vault_token |

## Example

```ruby
bank_account_attributes = BankAccountAttributes.new(
  chargify_token: 'chargify_token6',
  bank_name: 'bank_name6',
  bank_routing_number: 'bank_routing_number4',
  bank_account_number: 'bank_account_number0',
  bank_account_type: BankAccountType::CHECKING
)
```

