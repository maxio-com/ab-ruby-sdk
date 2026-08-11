
# Payment Profile Response

## Structure

`PaymentProfileResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_profile` | [ApplePay Payment Profile](../../doc/models/apple-pay-payment-profile.md) \| [Bank Account Payment Profile](../../doc/models/bank-account-payment-profile.md) \| [Credit Card Payment Profile](../../doc/models/credit-card-payment-profile.md) \| [Paypal Payment Profile](../../doc/models/paypal-payment-profile.md) | Required | - |

## Example

```ruby
payment_profile_response = PaymentProfileResponse.new(
  payment_profile: ApplePayPaymentProfile.new(
    payment_type: PaymentType::APPLE_PAY,
    id: 60,
    first_name: 'first_name2',
    last_name: 'last_name0',
    customer_id: 98,
    current_vault: ApplePayVault::BRAINTREE_BLUE
  )
)
```

