
# Apply Credit Note Event

## Structure

`ApplyCreditNoteEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | - |
| `timestamp` | `DateTime` | Required | - |
| `invoice` | [`Invoice`](../../doc/models/invoice.md) | Required | - |
| `event_type` | [`InvoiceEventType`](../../doc/models/invoice-event-type.md) | Required | **Default**: `InvoiceEventType::APPLY_CREDIT_NOTE` |
| `event_data` | [`ApplyCreditNoteEventData`](../../doc/models/apply-credit-note-event-data.md) | Required | Example schema for an `apply_credit_note` event |

## Example

```ruby
apply_credit_note_event = ApplyCreditNoteEvent.new(
  id: 56,
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
  event_type: InvoiceEventType::APPLY_CREDIT_NOTE,
  event_data: ApplyCreditNoteEventData.new(
    uid: 'uid6',
    credit_note_number: 'credit_note_number0',
    credit_note_uid: 'credit_note_uid0',
    original_amount: 'original_amount0',
    applied_amount: 'applied_amount2',
    transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    memo: 'memo0',
    role: 'role0',
    consolidated_invoice: false,
    applied_credit_notes: [
      AppliedCreditNoteData.new(
        uid: 'uid4',
        number: 'number8'
      ),
      AppliedCreditNoteData.new(
        uid: 'uid4',
        number: 'number8'
      ),
      AppliedCreditNoteData.new(
        uid: 'uid4',
        number: 'number8'
      )
    ]
  )
)
```

