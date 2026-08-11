
# Change Invoice Status Event

## Structure

`ChangeInvoiceStatusEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | - |
| `timestamp` | `DateTime` | Required | - |
| `invoice` | [`Invoice`](../../doc/models/invoice.md) | Required | - |
| `event_type` | [`InvoiceEventType`](../../doc/models/invoice-event-type.md) | Required | **Default**: `InvoiceEventType::CHANGE_INVOICE_STATUS` |
| `event_data` | [`ChangeInvoiceStatusEventData`](../../doc/models/change-invoice-status-event-data.md) | Required | Example schema for an `change_invoice_status` event |

## Example

```ruby
change_invoice_status_event = ChangeInvoiceStatusEvent.new(
  id: 36,
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
  event_type: InvoiceEventType::CHANGE_INVOICE_STATUS,
  event_data: ChangeInvoiceStatusEventData.new(
    from_status: InvoiceStatus::OPEN,
    to_status: InvoiceStatus::PENDING,
    gateway_trans_id: 'gateway_trans_id2',
    amount: 'amount8',
    consolidation_level: InvoiceConsolidationLevel::CHILD
  )
)
```

