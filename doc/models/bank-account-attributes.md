
# Bank Account Attributes

## Structure

`BankAccountAttributes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `chargify_token` | `String` | Optional | - |
| `bank_name` | `String` | Optional | (Required when creating a subscription with ACH or GoCardless) The name of the bank where the customer’s account resides |
| `bank_routing_number` | `String` | Optional | (Required when creating a subscription with ACH. Optional when creating a subscription with GoCardless). The routing number of the bank. It becomes bank_code while passing via GoCardless API |
| `bank_account_number` | `String` | Optional | (Required when creating a subscription with ACH. Required when creating a subscription with GoCardless and bank_iban is blank) The customerʼs bank account number |
| `bank_account_type` | `String` | Optional | - |
| `bank_branch_code` | `String` | Optional | (Optional when creating a subscription with GoCardless) Branch code. Alternatively, an IBAN can be provided |
| `bank_iban` | `String` | Optional | (Optional when creating a subscription with GoCardless). International Bank Account Number. Alternatively, local bank details can be provided |
| `bank_account_holder_type` | `String` | Optional | - |
| `payment_type` | `String` | Optional | - |
| `current_vault` | [`BankAccountVault`](../../doc/models/bank-account-vault.md) | Optional | The vault that stores the payment profile with the provided vault_token. |
| `vault_token` | `String` | Optional | - |
| `customer_vault_token` | `String` | Optional | (only for Authorize.Net CIM storage or Square) The customerProfileId for the owner of the customerPaymentProfileId provided as the vault_token |

## Example (as JSON)

```json
{
  "chargify_token": "chargify_token0",
  "bank_name": "bank_name2",
  "bank_routing_number": "bank_routing_number8",
  "bank_account_number": "bank_account_number4",
  "bank_account_type": "bank_account_type0"
}
```

