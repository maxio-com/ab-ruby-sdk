
# Refund Invoice Event

## Structure

`RefundInvoiceEvent`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Required | - |
| `timestamp` | `DateTime` | Required | - |
| `invoice` | [`Invoice`](../../doc/models/invoice.md) | Required | - |
| `event_type` | [`InvoiceEventType`](../../doc/models/invoice-event-type.md) | Required | **Default**: `InvoiceEventType::REFUND_INVOICE` |
| `event_data` | [`RefundInvoiceEventData`](../../doc/models/refund-invoice-event-data.md) | Required | Example schema for an `refund_invoice` event |

## Example

```ruby
refund_invoice_event = RefundInvoiceEvent.new(
  id: 142,
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
  event_type: InvoiceEventType::REFUND_INVOICE,
  event_data: RefundInvoiceEventData.new(
    apply_credit: false,
    credit_note_attributes: CreditNote.new(
      uid: 'uid2',
      site_id: 72,
      customer_id: 184,
      subscription_id: 0,
      number: 'number0'
    ),
    payment_id: 204,
    refund_amount: 'refund_amount8',
    refund_id: 248,
    transaction_time: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    consolidation_level: InvoiceConsolidationLevel::CHILD,
    memo: 'memo0',
    original_amount: 'original_amount0'
  )
)
```

