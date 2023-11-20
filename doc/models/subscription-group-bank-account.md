
# Subscription Group Bank Account

## Structure

`SubscriptionGroupBankAccount`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bank_name` | `String` | Optional | (Required when creating a subscription with ACH or GoCardless) The name of the bank where the customer’s account resides |
| `bank_account_number` | `String` | Optional | (Required when creating a subscription with ACH. Required when creating a subscription with GoCardless and bank_iban is blank) The customerʼs bank account number |
| `bank_routing_number` | `String` | Optional | (Required when creating a subscription with ACH. Optional when creating a subscription with GoCardless). The routing number of the bank. It becomes bank_code while passing via GoCardless API |
| `bank_iban` | `String` | Optional | (Optional when creating a subscription with GoCardless). International Bank Account Number. Alternatively, local bank details can be provided |
| `bank_branch_code` | `String` | Optional | (Optional when creating a subscription with GoCardless) Branch code. Alternatively, an IBAN can be provided |
| `bank_account_type` | [`BankAccountType`](../../doc/models/bank-account-type.md) | Optional | **Default**: `BankAccountType::CHECKING` |
| `bank_account_holder_type` | [`HolderType`](../../doc/models/holder-type.md) | Optional | - |
| `payment_type` | `String` | Optional | - |
| `billing_address` | `String` | Optional | - |
| `billing_city` | `String` | Optional | - |
| `billing_state` | `String` | Optional | - |
| `billing_zip` | `String` | Optional | - |
| `billing_country` | `String` | Optional | - |
| `chargify_token` | `String` | Optional | - |
| `current_vault` | [`BankAccountVault`](../../doc/models/bank-account-vault.md) | Optional | The vault that stores the payment profile with the provided vault_token. |
| `gateway_handle` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "bank_account_type": "checking",
  "bank_name": "bank_name2",
  "bank_account_number": "bank_account_number4",
  "bank_routing_number": "bank_routing_number8",
  "bank_iban": "bank_iban6",
  "bank_branch_code": "bank_branch_code6"
}
```

