
# Multi Invoice Payment

## Structure

`MultiInvoicePayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_id` | `Float` | Optional | The numeric ID of the transaction. |
| `total_amount` | `String` | Optional | Dollar amount of the sum of the paid invoices. |
| `currency_code` | `String` | Optional | The ISO 4217 currency code (3 character string) representing the currency of invoice transaction. |
| `applications` | [`Array<InvoicePaymentApplication>`](../../doc/models/invoice-payment-application.md) | Optional | - |

## Example (as JSON)

```json
{
  "transaction_id": 244.64,
  "total_amount": "total_amount2",
  "currency_code": "currency_code2",
  "applications": [
    {
      "invoice_uid": "invoice_uid8",
      "application_uid": "application_uid8",
      "applied_amount": "applied_amount0"
    }
  ]
}
```

