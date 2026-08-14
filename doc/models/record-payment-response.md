
# Record Payment Response

## Structure

`RecordPaymentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `paid_invoices` | [`Array[PaidInvoice]`](../../doc/models/paid-invoice.md) | Optional | - |
| `prepayment` | [`InvoicePrePayment`](../../doc/models/invoice-pre-payment.md) | Optional | - |

## Example

```ruby
record_payment_response = RecordPaymentResponse.new(
  paid_invoices: [
    PaidInvoice.new(
      invoice_id: 'invoice_id8',
      status: InvoiceStatus::DRAFT,
      due_amount: 'due_amount0',
      paid_amount: 'paid_amount0'
    )
  ],
  prepayment: InvoicePrePayment.new(
    subscription_id: 148,
    amount_in_cents: 124,
    ending_balance_in_cents: 164
  )
)
```

