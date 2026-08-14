
# Credit Card Payment Profile

## Structure

`CreditCardPaymentProfile`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | The Chargify-assigned ID of the stored card. This value can be used as an input to payment_profile_id when creating a subscription, in order to re-use a stored payment profile for the same customer. |
| `first_name` | `String` | Optional | The first name of the card holder. |
| `last_name` | `String` | Optional | The last name of the card holder. |
| `masked_card_number` | `String` | Optional | A string representation of the credit card number with all but the last 4 digits masked with X’s (e.g., ‘XXXX-XXXX-XXXX-1234’). |
| `card_type` | [`CardType`](../../doc/models/card-type.md) | Optional | The type of card used. |
| `expiration_month` | `Integer` | Optional | An integer representing the expiration month of the card(1 – 12). |
| `expiration_year` | `Integer` | Optional | An integer representing the 4-digit expiration year of the card(e.g., ‘2012’). |
| `customer_id` | `Integer` | Optional | The Chargify-assigned id for the customer record to which the card belongs. |
| `current_vault` | [`CreditCardVault`](../../doc/models/credit-card-vault.md) | Optional | The vault that stores the payment profile with the provided `vault_token`. Use `bogus` for testing. |
| `vault_token` | `String` | Optional | The “token” provided by your vault storage for an already stored payment profile. |
| `billing_address` | `String` | Optional | The current billing street address for the card. |
| `billing_city` | `String` | Optional | The current billing address city for the card. |
| `billing_state` | `String` | Optional | The current billing address state for the card. |
| `billing_zip` | `String` | Optional | The current billing address zip code for the card. |
| `billing_country` | `String` | Optional | The current billing address country for the card. |
| `customer_vault_token` | `String` | Optional | (only for Authorize.Net CIM storage): the customerProfileId for the owner of the customerPaymentProfileId provided as the vault_token. |
| `billing_address_2` | `String` | Optional | The current billing street address, second line, for the card. |
| `payment_type` | [`PaymentType`](../../doc/models/payment-type.md) | Required | **Default**: `PaymentType::CREDIT_CARD` |
| `disabled` | `TrueClass \| FalseClass` | Optional | - |
| `chargify_token` | `String` | Optional | Token received after sending billing information using Maxio.js (formerly Chargify.js). This token will only be received if passed as a sole attribute of credit_card_attributes (e.g., tok_9g6hw85pnpt6knmskpwp4ttt). |
| `site_gateway_setting_id` | `Integer` | Optional | - |
| `gateway_handle` | `String` | Optional | An identifier of connected gateway. |
| `created_at` | `DateTime` | Optional | A timestamp indicating when this payment profile was created |
| `updated_at` | `DateTime` | Optional | A timestamp indicating when this payment profile was last updated |

## Example

```ruby
credit_card_payment_profile = CreditCardPaymentProfile.new(
  payment_type: PaymentType::CREDIT_CARD,
  id: 10088716,
  first_name: 'Test',
  last_name: 'Subscription',
  masked_card_number: 'XXXX-XXXX-XXXX-1',
  card_type: CardType::BOGUS,
  expiration_month: 1,
  expiration_year: 2022,
  customer_id: 14543792,
  current_vault: CreditCardVault::BOGUS,
  vault_token: '1',
  billing_address: '123 Montana Way',
  billing_city: 'Billings',
  billing_state: 'MT',
  billing_zip: '59101',
  billing_country: 'US',
  customer_vault_token: 'customer_vault_token2',
  billing_address_2: '',
  site_gateway_setting_id: 1,
  gateway_handle: 'gateway_handle8'
)
```

