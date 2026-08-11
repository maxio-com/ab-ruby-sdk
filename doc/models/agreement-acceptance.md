
# Agreement Acceptance

Required when creating a subscription with Maxio Payments.

## Structure

`AgreementAcceptance`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ip_address` | `String` | Optional | Required when providing agreement acceptance params. |
| `terms_url` | `String` | Optional | Required when creating a subscription with Maxio Payments. Either terms_url or privacy_policy_url is required when providing agreement_acceptance params. |
| `privacy_policy_url` | `String` | Optional | - |
| `return_refund_policy_url` | `String` | Optional | - |
| `delivery_policy_url` | `String` | Optional | - |
| `secure_checkout_policy_url` | `String` | Optional | - |

## Example

```ruby
agreement_acceptance = AgreementAcceptance.new(
  ip_address: 'ip_address8',
  terms_url: 'terms_url6',
  privacy_policy_url: 'privacy_policy_url4',
  return_refund_policy_url: 'return_refund_policy_url0',
  delivery_policy_url: 'delivery_policy_url4'
)
```

