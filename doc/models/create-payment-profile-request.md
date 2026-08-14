
# Create Payment Profile Request

## Structure

`CreatePaymentProfileRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_profile` | [`CreatePaymentProfile`](../../doc/models/create-payment-profile.md) | Required | - |

## Example

```ruby
create_payment_profile_request = CreatePaymentProfileRequest.new(
  payment_profile: CreatePaymentProfile.new(
    chargify_token: 'tok_9g6hw85pnpt6knmskpwp4ttt',
    id: 44,
    payment_type: PaymentType::CREDIT_CARD,
    first_name: 'first_name4',
    last_name: 'last_name2',
    full_number: '5424000000000015'
  )
)
```

