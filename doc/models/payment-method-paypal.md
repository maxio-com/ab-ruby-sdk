
# Payment Method Paypal

## Structure

`PaymentMethodPaypal`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `email` | `String` | Required | - |
| `type` | [`InvoiceEventPaymentMethod`](../../doc/models/invoice-event-payment-method.md) | Required | - |

## Example

```ruby
payment_method_paypal = PaymentMethodPaypal.new(
  email: 'email6',
  type: InvoiceEventPaymentMethod::PAYPAL_ACCOUNT
)
```

