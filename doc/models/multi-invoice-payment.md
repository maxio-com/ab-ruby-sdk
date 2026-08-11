
# Multi Invoice Payment

## Structure

`MultiInvoicePayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_id` | `Integer` | Optional | The numeric ID of the transaction. |
| `total_amount` | `String` | Optional | Dollar amount of the sum of the paid invoices. |
| `currency_code` | `String` | Optional | The ISO 4217 currency code (3 character string) representing the currency of invoice transaction. |
| `applications` | [`Array[InvoicePaymentApplication]`](../../doc/models/invoice-payment-application.md) | Optional | - |

## Example

```ruby
multi_invoice_payment = MultiInvoicePayment.new(
  transaction_id: 238,
  total_amount: 'total_amount0',
  currency_code: 'currency_code0',
  applications: [
    InvoicePaymentApplication.new(
      invoice_uid: 'invoice_uid8',
      application_uid: 'application_uid8',
      applied_amount: 'applied_amount0'
    )
  ]
)
```

