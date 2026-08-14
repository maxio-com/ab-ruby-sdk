
# Get One Time Token Bank Account Payment Profile

## Structure

`GetOneTimeTokenBankAccountPaymentProfile`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `first_name` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `last_name` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `customer_id` | `String` | Optional | - |
| `current_vault` | [`BankAccountVault`](../../doc/models/bank-account-vault.md) | Required | The vault that stores the payment profile with the provided vault_token. Use `bogus` for testing. |
| `vault_token` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `billing_address` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `billing_address_2` | `String` | Optional | - |
| `billing_city` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `billing_country` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `billing_state` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `billing_zip` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `bank_name` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `masked_bank_routing_number` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `masked_bank_account_number` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `bank_account_type` | [`BankAccountType`](../../doc/models/bank-account-type.md) | Required | Defaults to checking |
| `bank_account_holder_type` | [`BankAccountHolderType`](../../doc/models/bank-account-holder-type.md) | Required | Defaults to personal |
| `payment_type` | `String` | Required | **Constraints**: *Minimum Length*: `1` |
| `disabled` | `TrueClass \| FalseClass` | Required | - |
| `site_gateway_setting_id` | `Integer` | Required | - |
| `customer_vault_token` | `String` | Optional | - |
| `gateway_handle` | `String` | Optional | - |
| `verified` | `TrueClass \| FalseClass` | Optional | - |

## Example

```ruby
get_one_time_token_bank_account_payment_profile = GetOneTimeTokenBankAccountPaymentProfile.new(
  first_name: 'first_name6',
  last_name: 'last_name4',
  current_vault: BankAccountVault::AUTHORIZENET,
  vault_token: 'vault_token8',
  billing_address: 'billing_address8',
  billing_city: 'billing_city4',
  billing_country: 'billing_country0',
  billing_state: 'billing_state0',
  billing_zip: 'billing_zip4',
  bank_name: 'bank_name8',
  masked_bank_routing_number: 'masked_bank_routing_number8',
  masked_bank_account_number: 'masked_bank_account_number8',
  bank_account_type: BankAccountType::CHECKING,
  bank_account_holder_type: BankAccountHolderType::PERSONAL,
  payment_type: 'payment_type4',
  disabled: false,
  site_gateway_setting_id: 128,
  id: 'id6',
  customer_id: 'customer_id4',
  billing_address_2: 'billing_address_28',
  customer_vault_token: 'customer_vault_token4',
  gateway_handle: 'gateway_handle8'
)
```

