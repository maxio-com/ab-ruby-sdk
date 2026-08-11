
# Backport Invoice Event

## Structure

`BackportInvoiceEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | - |
| `timestamp` | `DateTime` | Required | - |
| `invoice` | [`Invoice`](../../doc/models/invoice.md) | Required | - |
| `event_type` | [`InvoiceEventType`](../../doc/models/invoice-event-type.md) | Required | **Default**: `InvoiceEventType::BACKPORT_INVOICE` |
| `event_data` | [`Invoice`](../../doc/models/invoice.md) | Required | Example schema for an `backport_invoice` event |

## Example

```ruby
backport_invoice_event = BackportInvoiceEvent.new(
  id: 236,
  timestamp: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  invoice: Invoice.new(
    id: 166,
    uid: 'uid6',
    site_id: 92,
    customer_id: 204,
    subscription_id: 20,
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  ),
  event_type: InvoiceEventType::BACKPORT_INVOICE,
  event_data: Invoice.new(
    id: 206,
    uid: 'uid6',
    site_id: 132,
    customer_id: 244,
    subscription_id: 60,
    issue_date: Date.iso8601('2024-01-01'),
    due_date: Date.iso8601('2024-01-01'),
    paid_date: Date.iso8601('2024-01-01'),
    public_url_expires_on: Date.iso8601('2024-01-21')
  )
)
```

