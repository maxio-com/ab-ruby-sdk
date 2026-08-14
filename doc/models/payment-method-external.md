
# Payment Method External

## Structure

`PaymentMethodExternal`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `details` | `String` | Required | - |
| `kind` | `String` | Required | - |
| `memo` | `String` | Required | - |
| `type` | [`InvoiceEventPaymentMethod`](../../doc/models/invoice-event-payment-method.md) | Required | - |

## Example

```ruby
payment_method_external = PaymentMethodExternal.new(
  details: 'details8',
  kind: 'kind6',
  memo: 'memo2',
  type: InvoiceEventPaymentMethod::EXTERNAL
)
```

