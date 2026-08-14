
# Create Payment

## Structure

`CreatePayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `String` | Required | - |
| `memo` | `String` | Required | - |
| `payment_details` | `String` | Required | - |
| `payment_method` | [`InvoicePaymentMethodType`](../../doc/models/invoice-payment-method-type.md) | Required | The type of payment method used. Defaults to other. |

## Example

```ruby
create_payment = CreatePayment.new(
  amount: 'amount0',
  memo: 'memo2',
  payment_details: 'payment_details8',
  payment_method: InvoicePaymentMethodType::ACH
)
```

