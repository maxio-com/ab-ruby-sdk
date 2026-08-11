
# Update Payment Profile Request

## Structure

`UpdatePaymentProfileRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_profile` | [`UpdatePaymentProfile`](../../doc/models/update-payment-profile.md) | Required | - |

## Example

```ruby
update_payment_profile_request = UpdatePaymentProfileRequest.new(
  payment_profile: UpdatePaymentProfile.new(
    first_name: 'first_name4',
    last_name: 'last_name2',
    full_number: '5424000000000015',
    card_type: CardType::BOGUS,
    expiration_month: 'expiration_month0'
  )
)
```

