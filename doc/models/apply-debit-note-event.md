
# Apply Debit Note Event

## Structure

`ApplyDebitNoteEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | - |
| `timestamp` | `DateTime` | Required | - |
| `invoice` | [`Invoice`](../../doc/models/invoice.md) | Required | - |
| `event_type` | [`InvoiceEventType`](../../doc/models/invoice-event-type.md) | Required | **Default**: `InvoiceEventType::APPLY_DEBIT_NOTE` |
| `event_data` | [`ApplyDebitNoteEventData`](../../doc/models/apply-debit-note-event-data.md) | Required | Example schema for an `apply_debit_note` event |

## Example

```ruby
apply_debit_note_event = ApplyDebitNoteEvent.new(
  id: 216,
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
  event_type: InvoiceEventType::APPLY_DEBIT_NOTE,
  event_data: ApplyDebitNoteEventData.new(
    debit_note_number: 'debit_note_number6',
    debit_note_uid: 'debit_note_uid2',
    original_amount: 'original_amount0',
    applied_amount: 'applied_amount2',
    memo: 'memo0',
    transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
  )
)
```

