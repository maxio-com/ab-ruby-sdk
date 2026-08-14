
# Invoice Issued

## Structure

`InvoiceIssued`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `uid` | `String` | Required | - |
| `number` | `String` | Required | - |
| `role` | `String` | Required | - |
| `due_date` | `Date` | Required | - |
| `issue_date` | `String` | Required | Invoice issue date. Can be an empty string if value is missing. |
| `paid_date` | `String` | Required | Paid date. Can be an empty string if value is missing. |
| `due_amount` | `String` | Required | - |
| `paid_amount` | `String` | Required | - |
| `tax_amount` | `String` | Required | - |
| `refund_amount` | `String` | Required | - |
| `total_amount` | `String` | Required | - |
| `status_amount` | `String` | Required | - |
| `product_name` | `String` | Required | - |
| `consolidation_level` | `String` | Required | - |
| `line_items` | [`Array[InvoiceLineItemEventData]`](../../doc/models/invoice-line-item-event-data.md) | Required | - |

## Example

```ruby
invoice_issued = InvoiceIssued.new(
  uid: 'uid0',
  number: 'number8',
  role: 'role4',
  due_date: Date.iso8601('2016-03-13'),
  issue_date: 'issue_date6',
  paid_date: 'paid_date0',
  due_amount: 'due_amount2',
  paid_amount: 'paid_amount2',
  tax_amount: 'tax_amount4',
  refund_amount: 'refund_amount6',
  total_amount: 'total_amount6',
  status_amount: 'status_amount0',
  product_name: 'product_name6',
  consolidation_level: 'consolidation_level2',
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

