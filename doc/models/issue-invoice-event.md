
# Issue Invoice Event

## Structure

`IssueInvoiceEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | - |
| `timestamp` | `DateTime` | Required | - |
| `invoice` | [`Invoice`](../../doc/models/invoice.md) | Required | - |
| `event_type` | [`InvoiceEventType`](../../doc/models/invoice-event-type.md) | Required | **Default**: `InvoiceEventType::ISSUE_INVOICE` |
| `event_data` | [`IssueInvoiceEventData`](../../doc/models/issue-invoice-event-data.md) | Required | Example schema for an `issue_invoice` event |

## Example

```ruby
issue_invoice_event = IssueInvoiceEvent.new(
  id: 238,
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
  event_type: InvoiceEventType::ISSUE_INVOICE,
  event_data: IssueInvoiceEventData.new(
    consolidation_level: InvoiceConsolidationLevel::CHILD,
    from_status: InvoiceStatus::OPEN,
    to_status: InvoiceStatus::PENDING,
    due_amount: 'due_amount8',
    total_amount: 'total_amount2'
  )
)
```

