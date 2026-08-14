
# Payment Method Apple Pay

## Structure

`PaymentMethodApplePay`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | [`InvoiceEventPaymentMethod`](../../doc/models/invoice-event-payment-method.md) | Required | - |

## Example

```ruby
payment_method_apple_pay = PaymentMethodApplePay.new(
  type: InvoiceEventPaymentMethod::APPLE_PAY
)
```

