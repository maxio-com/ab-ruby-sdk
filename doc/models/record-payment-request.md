
# Record Payment Request

## Structure

`RecordPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment` | [`CreatePayment`](../../doc/models/create-payment.md) | Required | - |

## Example

```ruby
record_payment_request = RecordPaymentRequest.new(
  payment: CreatePayment.new(
    amount: 'amount8',
    memo: 'memo0',
    payment_details: 'payment_details6',
    payment_method: InvoicePaymentMethodType::CASH
  )
)
```

