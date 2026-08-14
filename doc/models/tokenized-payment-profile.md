
# Tokenized Payment Profile

## Structure

`TokenizedPaymentProfile`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | - |
| `vault_token` | `String` | Optional | - |
| `gateway_handle` | `String` | Optional | - |
| `customer_vault_token` | `String` | Optional | - |

## Example

```ruby
tokenized_payment_profile = TokenizedPaymentProfile.new(
  id: 216,
  vault_token: 'vault_token4',
  gateway_handle: 'gateway_handle6',
  customer_vault_token: 'customer_vault_token0'
)
```

