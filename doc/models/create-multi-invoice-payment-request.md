
# Create Multi Invoice Payment Request

## Structure

`CreateMultiInvoicePaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment` | [`CreateMultiInvoicePayment`](../../doc/models/create-multi-invoice-payment.md) | Required | - |

## Example

```ruby
create_multi_invoice_payment_request = CreateMultiInvoicePaymentRequest.new(
  payment: CreateMultiInvoicePayment.new(
    amount: 'String9',
    applications: [
      CreateInvoicePaymentApplication.new(
        invoice_uid: 'invoice_uid8',
        amount: 'amount0'
      )
    ],
    memo: 'memo0',
    details: 'details6',
    method: InvoicePaymentMethodType::ACH,
    received_on: 'received_on8'
  )
)
```

