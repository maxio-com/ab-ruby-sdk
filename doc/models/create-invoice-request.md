
# Create Invoice Request

## Structure

`CreateInvoiceRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice` | [`CreateInvoice`](../../doc/models/create-invoice.md) | Required | - |

## Example

```ruby
create_invoice_request = CreateInvoiceRequest.new(
  invoice: CreateInvoice.new(
    line_items: [
      CreateInvoiceItem.new(
        title: 'title4',
        quantity: 56.68,
        unit_price: 39.9,
        taxable: false,
        tax_code: 'tax_code6'
      ),
      CreateInvoiceItem.new(
        title: 'title4',
        quantity: 56.68,
        unit_price: 39.9,
        taxable: false,
        tax_code: 'tax_code6'
      ),
      CreateInvoiceItem.new(
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
    memo: 'memo0',
    status: CreateInvoiceStatus::DRAFT
  )
)
```

