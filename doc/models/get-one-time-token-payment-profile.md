
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
| `card_type` | [`CardType`](../../doc/models/card-type.md) | Required | The type of card used. |
| `expiration_month` | `Float` | Required | - |
| `expiration_year` | `Float` | Required | - |
| `customer_id` | `String` | Optional | - |
| `current_vault` | [`CreditCardVault`](../../doc/models/credit-card-vault.md) | Required | The vault that stores the payment profile with the provided `vault_token`. Use `bogus` for testing. |
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

## Example

```ruby
get_one_time_token_payment_profile = GetOneTimeTokenPaymentProfile.new(
  first_name: 'first_name0',
  last_name: 'last_name8',
  masked_card_number: 'masked_card_number8',
  card_type: CardType::VISA,
  expiration_month: 114.46,
  expiration_year: 91.12,
  current_vault: CreditCardVault::ADYEN,
  vault_token: 'vault_token2',
  billing_address: 'billing_address2',
  billing_city: 'billing_city8',
  billing_country: 'billing_country4',
  billing_state: 'billing_state4',
  billing_zip: 'billing_zip8',
  payment_type: 'payment_type0',
  disabled: false,
  site_gateway_setting_id: 68,
  id: 'id0',
  customer_id: 'customer_id8',
  billing_address_2: 'billing_address_22',
  customer_vault_token: 'customer_vault_token8',
  gateway_handle: 'gateway_handle2'
)
```

