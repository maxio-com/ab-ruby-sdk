
# Get One Time Token Payment Profile

## Structure

`GetOneTimeTokenPaymentProfile`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `first_name` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `last_name` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `masked_card_number` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `card_type` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `expiration_month` | `Float` | Required | - |
| `expiration_year` | `Float` | Required | - |
| `customer_id` | `String` | Optional | - |
| `current_vault` | [`CurrentVault`](../../doc/models/current-vault.md) | Required | The vault that stores the payment profile with the provided `vault_token`. Use `bogus` for testing. |
| `vault_token` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `billing_address` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `billing_address_2` | `String` | Optional | - |
| `billing_city` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `billing_country` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `billing_state` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `billing_zip` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `payment_type` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `disabled` | `TrueClass \| FalseClass` | Required | - |
| `site_gateway_setting_id` | `Integer` | Required | - |
| `customer_vault_token` | `String` | Optional | - |
| `gateway_handle` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "id": "id2",
  "first_name": "first_name2",
  "last_name": "last_name0",
  "masked_card_number": "masked_card_number0",
  "card_type": "card_type8",
  "expiration_month": 187.78,
  "expiration_year": 164.44,
  "customer_id": "customer_id0",
  "current_vault": "firstdata",
  "vault_token": "vault_token4",
  "billing_address": "billing_address4",
  "billing_address_2": "billing_address_24",
  "billing_city": "billing_city0",
  "billing_country": "billing_country6",
  "billing_state": "billing_state6",
  "billing_zip": "billing_zip0",
  "payment_type": "payment_type2",
  "disabled": false,
  "site_gateway_setting_id": 232,
  "customer_vault_token": "customer_vault_token0",
  "gateway_handle": "gateway_handle4"
}
```

