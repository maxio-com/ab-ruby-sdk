
# Consolidated Invoice

## Structure

`ConsolidatedInvoice`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoices` | [`Array[Invoice]`](../../doc/models/invoice.md) | Optional | - |

## Example

```ruby
consolidated_invoice = ConsolidatedInvoice.new(
  invoices: [
    Invoice.new(
      id: 196,
      uid: 'uid6',
      site_id: 122,
      customer_id: 234,
      subscription_id: 50
    )
  ]
)
```

