
# Subscription Bank Account

## Structure

`SubscriptionBankAccount`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bank_account_holder_type` | `String` | Optional | Defaults to personal |
| `bank_account_type` | `String` | Optional | Defaults to checking |
| `bank_name` | `String` | Optional | The bank where the account resides |
| `billing_address` | `String` | Optional | The current billing street address for the bank account |
| `billing_address_2` | `String` | Optional | The current billing street address, second line, for the bank account |
| `billing_city` | `String` | Optional | The current billing address city for the bank account |
| `billing_state` | `String` | Optional | The current billing address state for the bank account |
| `billing_zip` | `String` | Optional | The current billing address zip code for the bank account |
| `billing_country` | `String` | Optional | The current billing address country for the bank account |
| `current_vault` | [`BankAccountVault`](../../doc/models/bank-account-vault.md) | Optional | The vault that stores the payment profile with the provided vault_token. |
| `customer_id` | `Integer` | Optional | The Chargify-assigned id for the customer record to which the bank account belongs |
| `customer_vault_token` | `String` | Optional | (only for Authorize.Net CIM storage): the customerProfileId for the owner of the customerPaymentProfileId provided as the vault_token |
| `first_name` | `String` | Optional | The first name of the bank account holder |
| `last_name` | `String` | Optional | The last name of the bank account holder |
| `id` | `Integer` | Optional | The Chargify-assigned ID of the stored bank account. This value can be used as an input to payment_profile_id when creating a subscription, in order to re-use a stored payment profile for the same customer |
| `masked_bank_account_number` | `String` | Optional | A string representation of the stored bank account number with all but the last 4 digits marked with X’s (i.e. ‘XXXXXXX1111’) |
| `masked_bank_routing_number` | `String` | Optional | A string representation of the stored bank routing number with all but the last 4 digits marked with X’s (i.e. ‘XXXXXXX1111’). payment_type will be bank_account |
| `vault_token` | `String` | Optional | The “token” provided by your vault storage for an already stored payment profile |
| `chargify_token` | `String` | Optional | Token received after sending billing informations using chargify.js. This token will only be received if passed as a sole attribute of credit_card_attributes (i.e. tok_9g6hw85pnpt6knmskpwp4ttt) |
| `site_gateway_setting_id` | `Integer` | Optional | - |
| `gateway_handle` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "bank_account_holder_type": "bank_account_holder_type4",
  "bank_account_type": "bank_account_type4",
  "bank_name": "bank_name8",
  "billing_address": "billing_address8",
  "billing_address_2": "billing_address_28"
}
```

