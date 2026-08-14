
# Multi Invoice Payment Response

## Structure

`MultiInvoicePaymentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment` | [`MultiInvoicePayment`](../../doc/models/multi-invoice-payment.md) | Required | - |

## Example

```ruby
multi_invoice_payment_response = MultiInvoicePaymentResponse.new(
  payment: MultiInvoicePayment.new(
    transaction_id: 224,
    total_amount: 'total_amount2',
    currency_code: 'currency_code2',
    applications: [
      InvoicePaymentApplication.new(
        invoice_uid: 'invoice_uid8',
        application_uid: 'application_uid8',
        applied_amount: 'applied_amount0'
      ),
      InvoicePaymentApplication.new(
        invoice_uid: 'invoice_uid8',
        application_uid: 'application_uid8',
        applied_amount: 'applied_amount0'
      ),
      InvoicePaymentApplication.new(
        invoice_uid: 'invoice_uid8',
        application_uid: 'application_uid8',
        applied_amount: 'applied_amount0'
      )
    ]
  )
)
```

