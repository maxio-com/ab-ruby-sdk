
# Created Payment Profile

## Structure

`CreatedPaymentProfile`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `first_name` | `String` | Optional | - |
| `last_name` | `String` | Optional | - |
| `masked_card_number` | `String` | Optional | - |
| `card_type` | `String` | Optional | - |
| `expiration_month` | `Integer` | Optional | - |
| `expiration_year` | `Integer` | Optional | - |
| `customer_id` | `Integer` | Optional | - |
| `current_vault` | [`CurrentVault`](../../doc/models/current-vault.md) | Optional | The vault that stores the payment profile with the provided `vault_token`. Use `bogus` for testing. |
| `vault_token` | `String` | Optional | - |
| `billing_address` | `String` | Optional | - |
| `billing_city` | `String` | Optional | - |
| `billing_state` | `String` | Optional | - |
| `billing_zip` | `String` | Optional | - |
| `billing_country` | `String` | Optional | - |
| `customer_vault_token` | `String` | Optional | - |
| `billing_address_2` | `String` | Optional | - |
| `payment_type` | `String` | Optional | - |
| `bank_name` | `String` | Optional | - |
| `masked_bank_routing_number` | `String` | Optional | - |
| `masked_bank_account_number` | `String` | Optional | - |
| `bank_account_type` | `String` | Optional | - |
| `bank_account_holder_type` | `String` | Optional | - |
| `verified` | `TrueClass \| FalseClass` | Optional | - |
| `site_gateway_setting_id` | `Integer` | Optional | - |
| `gateway_handle` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "id": 14,
  "first_name": "first_name0",
  "last_name": "last_name8",
  "masked_card_number": "masked_card_number8",
  "card_type": "card_type4"
}
```

