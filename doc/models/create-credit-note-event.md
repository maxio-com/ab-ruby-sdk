
# Create Credit Note Event

## Structure

`CreateCreditNoteEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | - |
| `timestamp` | `DateTime` | Required | - |
| `invoice` | [`Invoice`](../../doc/models/invoice.md) | Required | - |
| `event_type` | [`InvoiceEventType`](../../doc/models/invoice-event-type.md) | Required | **Default**: `InvoiceEventType::CREATE_CREDIT_NOTE` |
| `event_data` | [`CreditNote`](../../doc/models/credit-note.md) | Required | Example schema for an `create_credit_note` event |

## Example

```ruby
create_credit_note_event = CreateCreditNoteEvent.new(
  id: 166,
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
  event_type: InvoiceEventType::CREATE_CREDIT_NOTE,
  event_data: CreditNote.new(
    uid: 'uid6',
    site_id: 132,
    customer_id: 244,
    subscription_id: 60,
    number: 'number6'
  )
)
```

