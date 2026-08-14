
# Update Invoice Request

Request payload for updating a draft ad hoc invoice.

## Structure

`UpdateInvoiceRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice` | [`UpdateInvoice`](../../doc/models/update-invoice.md) | Required | Attributes of a draft ad hoc invoice which can be updated. Only the submitted attributes are changed. |

## Example

```ruby
update_invoice_request = UpdateInvoiceRequest.new(
  invoice: UpdateInvoice.new(
    line_items: [
      UpdateInvoiceItem.new(
        title: 'title4',
        quantity: 56.68,
        unit_price: 39.9,
        taxable: false,
        tax_code: 'tax_code6'
      ),
      UpdateInvoiceItem.new(
        title: 'title4',
        quantity: 56.68,
        unit_price: 39.9,
        taxable: false,
        tax_code: 'tax_code6'
      ),
      UpdateInvoiceItem.new(
        title: 'title4',
        quantity: 56.68,
        unit_price: 39.9,
        taxable: false,
        tax_code: 'tax_code6'
      )
    ],
    issue_date: Date.iso8601('2024-01-01'),
    net_terms: 144,
    payment_instructions: 'payment_instructions6',
    memo: 'memo0'
  )
)
```

