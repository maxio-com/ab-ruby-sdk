
# Paid Invoice

## Structure

`PaidInvoice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Optional | The uid of the paid invoice |
| `status` | [`InvoiceStatus`](../../doc/models/invoice-status.md) | Optional | The current status of the invoice. See [Invoice Statuses](https://docs.maxio.com/billing/invoicing/overview/understand-how-invoices-are-generated#invoice-statuses) for more. |
| `due_amount` | `String` | Optional | The remaining due amount on the invoice |
| `paid_amount` | `String` | Optional | The total amount paid on this invoice (including any prior payments) |

## Example

```ruby
paid_invoice = PaidInvoice.new(
  invoice_id: 'invoice_id6',
  status: InvoiceStatus::PAID,
  due_amount: 'due_amount6',
  paid_amount: 'paid_amount4'
)
```

