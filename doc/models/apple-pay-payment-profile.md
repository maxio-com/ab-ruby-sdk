
# Apple Pay Payment Profile

## Structure

`ApplePayPaymentProfile`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The Chargify-assigned ID of the Apple Pay payment profile. |
| `first_name` | `String` | Optional | The first name of the Apple Pay account holder |
| `last_name` | `String` | Optional | The last name of the Apple Pay account holder |
| `customer_id` | `Integer` | Optional | The Chargify-assigned id for the customer record to which the Apple Pay account belongs |
| `current_vault` | [`ApplePayVault`](../../doc/models/apple-pay-vault.md) | Optional | The vault that stores the payment profile with the provided vault_token. |
| `vault_token` | `String` | Optional | The “token” provided by your vault storage for an already stored payment profile |
| `billing_address` | `String` | Optional | The current billing street address for the Apple Pay account |
| `billing_city` | `String` | Optional | The current billing address city for the Apple Pay account |
| `billing_state` | `String` | Optional | The current billing address state for the Apple Pay account |
| `billing_zip` | `String` | Optional | The current billing address zip code for the Apple Pay account |
| `billing_country` | `String` | Optional | The current billing address country for the Apple Pay account |
| `customer_vault_token` | `String` | Optional | - |
| `billing_address_2` | `String` | Optional | The current billing street address, second line, for the Apple Pay account |
| `payment_type` | [`PaymentType`](../../doc/models/payment-type.md) | Required | **Default**: `PaymentType::APPLE_PAY` |
| `site_gateway_setting_id` | `Integer` | Optional | - |
| `gateway_handle` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | A timestamp indicating when this payment profile was created |
| `updated_at` | `DateTime` | Optional | A timestamp indicating when this payment profile was last updated |

## Example (as JSON)

```json
{
  "payment_type": "apple_pay",
  "id": 60,
  "first_name": "first_name2",
  "last_name": "last_name0",
  "customer_id": 98,
  "current_vault": "braintree_blue"
}
```

