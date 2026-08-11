
# Create Debit Note Event

## Structure

`CreateDebitNoteEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | - |
| `timestamp` | `DateTime` | Required | - |
| `invoice` | [`Invoice`](../../doc/models/invoice.md) | Required | - |
| `event_type` | [`InvoiceEventType`](../../doc/models/invoice-event-type.md) | Required | **Default**: `InvoiceEventType::CREATE_DEBIT_NOTE` |
| `event_data` | [`DebitNote`](../../doc/models/debit-note.md) | Required | Example schema for an `create_debit_note` event |

## Example

```ruby
create_debit_note_event = CreateDebitNoteEvent.new(
  id: 246,
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
  event_type: InvoiceEventType::CREATE_DEBIT_NOTE,
  event_data: DebitNote.new(
    uid: 'uid6',
    site_id: 132,
    customer_id: 244,
    subscription_id: 60,
    number: 64
  )
)
```

