
# Bank Account

## Structure

`BankAccount`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `first_name` | `String` | Optional | - |
| `last_name` | `String` | Optional | - |
| `customer_id` | `Integer` | Optional | - |
| `current_vault` | [`BankAccountVault`](../../doc/models/bank-account-vault.md) | Optional | The vault that stores the payment profile with the provided vault_token. |
| `vault_token` | `String` | Optional | - |
| `billing_address` | `String` | Optional | - |
| `billing_city` | `String` | Optional | - |
| `billing_state` | `String` | Optional | - |
| `billing_zip` | `String` | Optional | - |
| `billing_country` | `String` | Optional | - |
| `customer_vault_token` | `String` | Optional | - |
| `billing_address_2` | `String` | Optional | - |
| `bank_name` | `String` | Optional | - |
| `masked_bank_routing_number` | `String` | Optional | - |
| `masked_bank_account_number` | `String` | Optional | - |
| `bank_account_type` | `String` | Optional | - |
| `bank_account_holder_type` | `String` | Optional | - |
| `payment_type` | `String` | Optional | - |
| `verified` | `TrueClass \| FalseClass` | Optional | denotes whether a bank account has been verified by providing the amounts of two small deposits made into the account<br>**Default**: `false` |
| `site_gateway_setting_id` | `Integer` | Optional | - |
| `gateway_handle` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "verified": false,
  "id": 190,
  "first_name": "first_name2",
  "last_name": "last_name0",
  "customer_id": 228,
  "current_vault": "stripe_connect"
}
```

