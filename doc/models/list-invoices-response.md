
# List Invoices Response

## Structure

`ListInvoicesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoices` | [`Array[Invoice]`](../../doc/models/invoice.md) | Required | - |

## Example

```ruby
list_invoices_response = ListInvoicesResponse.new(
  invoices: [
    Invoice.new(
      id: 196,
      uid: 'uid6',
      site_id: 122,
      customer_id: 234,
      subscription_id: 50,
      issue_date: Date.iso8601('2024-01-01'),
      due_date: Date.iso8601('2024-01-01'),
      paid_date: Date.iso8601('2024-01-01'),
      public_url_expires_on: Date.iso8601('2024-01-21')
    )
  ]
)
```

