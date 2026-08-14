
# ACH Agreement

(Optional) If passed, the proof of the authorized ACH agreement terms will be persisted.

## Structure

`ACHAgreement`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `agreement_terms` | `String` | Optional | (Required when providing ACH agreement params) The ACH authorization agreement terms. |
| `authorizer_first_name` | `String` | Optional | (Required when providing ACH agreement params) The first name of the person authorizing the ACH agreement. |
| `authorizer_last_name` | `String` | Optional | (Required when providing ACH agreement params) The last name of the person authorizing the ACH agreement. |
| `ip_address` | `String` | Optional | (Required when providing ACH agreement params) The IP address of the person authorizing the ACH agreement. |

## Example

```ruby
ach_agreement = ACHAgreement.new(
  agreement_terms: 'agreement_terms0',
  authorizer_first_name: 'authorizer_first_name6',
  authorizer_last_name: 'authorizer_last_name8',
  ip_address: 'ip_address8'
)
```

