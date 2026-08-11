
# Payment Profile Params

PCI-safe cardholder fields only. Full card numbers, CVV, and billing address are never included.

## Structure

`PaymentProfileParams`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `first_name` | `String` | Optional | - |
| `last_name` | `String` | Optional | - |
| `card_type` | `String` | Optional | - |

## Example

```ruby
payment_profile_params = PaymentProfileParams.new(
  first_name: 'first_name2',
  last_name: 'last_name0',
  card_type: 'card_type2'
)
```

