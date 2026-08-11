
# Subscription Group Credit Card

## Structure

`SubscriptionGroupCreditCard`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `chargify_token` | `String` | Optional | - |
| `vault_token` | `String` | Optional | - |
| `current_vault` | [`CreditCardVault`](../../doc/models/credit-card-vault.md) | Optional | The vault that stores the payment profile with the provided `vault_token`. Use `bogus` for testing. |
| `gateway_handle` | `String` | Optional | - |
| `first_name` | `String` | Optional | - |
| `last_name` | `String` | Optional | - |
| `billing_address` | `String` | Optional | - |
| `billing_address_2` | `String` | Optional | - |
| `billing_city` | `String` | Optional | - |
| `billing_state` | `String` | Optional | - |
| `billing_zip` | `String` | Optional | - |
| `billing_country` | `String` | Optional | - |
| `full_number` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `expiration_month` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `expiration_year` | String \| Integer \| nil | Optional | This is a container for one-of cases. |
| `last_four` | `String` | Optional | - |
| `card_type` | [`CardType`](../../doc/models/card-type.md) | Optional | The type of card used. |
| `customer_vault_token` | `String` | Optional | - |
| `cvv` | `String` | Optional | - |
| `payment_type` | `String` | Optional | - |

## Example

```ruby
subscription_group_credit_card = SubscriptionGroupCreditCard.new(
  chargify_token: 'tok_592nf92ng0sjd4300p',
  vault_token: 'vault_token8',
  current_vault: CreditCardVault::PAYMILL,
  gateway_handle: 'gateway_handle2',
  first_name: 'first_name6',
  full_number: 4111111111111111
)
```

