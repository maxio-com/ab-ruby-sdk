
# Proforma Invoice Issued

## Structure

`ProformaInvoiceIssued`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Required | - |
| `number` | `String` | Required | - |
| `role` | `String` | Required | - |
| `delivery_date` | `Date` | Required | - |
| `created_at` | `DateTime` | Required | - |
| `due_amount` | `String` | Required | - |
| `paid_amount` | `String` | Required | - |
| `tax_amount` | `String` | Required | - |
| `total_amount` | `String` | Required | - |
| `product_name` | `String` | Required | - |
| `line_items` | [`Array[InvoiceLineItemEventData]`](../../doc/models/invoice-line-item-event-data.md) | Required | - |

## Example

```ruby
proforma_invoice_issued = ProformaInvoiceIssued.new(
  uid: 'uid8',
  number: 'number4',
  role: 'role8',
  delivery_date: Date.iso8601('2016-03-13'),
  created_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  due_amount: 'due_amount0',
  paid_amount: 'paid_amount0',
  tax_amount: 'tax_amount8',
  total_amount: 'total_amount4',
  product_name: 'product_name4',
  line_items: [
    InvoiceLineItemEventData.new(
      uid: 'uid8',
      title: 'title4',
      description: 'description8',
      quantity: 102,
      quantity_delta: 204
    )
  ]
)
```

