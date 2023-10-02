
# Credit Card Payment Profile

## Structure

`CreditCardPaymentProfile`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `first_name` | `String` | Optional | - |
| `last_name` | `String` | Optional | - |
| `masked_card_number` | `String` | Optional | - |
| `card_type` | [`CardType1Enum`](../../doc/models/card-type-1-enum.md) | Optional | - |
| `expiration_month` | `Integer` | Optional | - |
| `expiration_year` | `Integer` | Optional | - |
| `customer_id` | `Integer` | Optional | - |
| `current_vault` | `String` | Optional | - |
| `vault_token` | `String` | Optional | - |
| `billing_address` | `String` | Optional | - |
| `billing_city` | `String` | Optional | - |
| `billing_state` | `String` | Optional | - |
| `billing_zip` | `String` | Optional | - |
| `billing_country` | `String` | Optional | - |
| `customer_vault_token` | `String` | Optional | - |
| `billing_address_2` | `String` | Optional | - |
| `payment_type` | `String` | Optional | - |
| `disabled` | `TrueClass \| FalseClass` | Optional | - |
| `site_gateway_setting_id` | `String` | Optional | - |
| `gateway_handle` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "id": 252,
  "first_name": "first_name0",
  "last_name": "last_name8",
  "masked_card_number": "masked_card_number8",
  "card_type": "synchrony"
}
```

